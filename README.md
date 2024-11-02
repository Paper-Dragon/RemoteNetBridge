# stream cross tunnel

```bash
project-root/
├── provider/                       # 网络提供设备相关的代码和配置
│   ├── bin/
│   │   ├── clash/                  # Clash 二进制及配置
│   │   │   ├── clash               # Clash 二进制文件
│   │   │   └── clash_config.yaml   # Clash 配置文件（网络提供者）
│   └── scripts/
│       ├── linux/                  # Linux 平台的提供端脚本
│       │   ├── setup_ssh_tunnel.sh # 使用 SSH 建立隧道的脚本
│       ├── windows/                # Windows 平台的提供端脚本
│       │   ├── setup_rdp_tunnel.ps1 # 使用 RDP 建立隧道的 PowerShell 脚本
│       └── common/                 # 跨平台的通用脚本
│           ├── start_proxy.sh      # 启动 Clash 代理
│           └── health_check.sh     # 健康检查脚本
├── consumer/                       # 网络使用者相关的代码和配置
│   ├── bin/
│   │   └── clash/                  # Clash 二进制及配置
│   │       ├── clash               # Clash 二进制文件
│   │       └── clash_config.yaml   # Clash 配置文件（网络使用者）
│   └── scripts/
│       ├── linux/                  # Linux 平台的使用端脚本
│       │   └── setup_consumer.sh   # 配置使用者的脚本
│       ├── windows/                # Windows 平台的使用端脚本
│       │   └── setup_consumer.ps1  # PowerShell 脚本
│       └── common/                 # 通用的配置或检查脚本
│           └── health_check.sh     # 健康检查脚本
├── config/
│   ├── provider_config.yaml        # 网络提供设备通用配置
│   └── consumer_config.yaml        # 网络使用者端的配置文件
├── docs/                           # 项目文档
│   ├── architecture.md             # 系统架构设计文档
│   ├── setup_guide.md              # 项目配置和安装指南
│   └── usage.md                    # 使用说明
├── logs/                           # 日志文件存放目录
│   └── proxy.log
├── .gitignore                      # Git忽略文件
└── README.md                       # 项目概述和快速入门

```
