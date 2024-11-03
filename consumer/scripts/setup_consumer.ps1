# 定义默认和兼容版本的路径
$defaultPath = "provider/mihomo-windows-amd64-v1.18.9/mihomo-windows-amd64.exe"
$compatiblePath = "provider/mihomo-windows-amd64-compatible-v1.18.9/mihomo-windows-amd64-compatible.exe"
$args = "-d ../resources"

# 尝试运行默认版本
Write-Output "尝试运行默认版本..."
& $defaultPath $args

# 检查上一个命令的退出代码
if ($LASTEXITCODE -ne 0) {
    Write-Output "默认版本无法启动，尝试运行兼容版本..."
    & $compatiblePath $args

    # 检查兼容版本是否成功运行
    if ($LASTEXITCODE -ne 0) {
        Write-Output "兼容版本也无法启动，请检查问题。"
        exit 1
    } else {
        Write-Output "兼容版本启动成功。"
    }
} else {
    Write-Output "默认版本启动成功。"
}
