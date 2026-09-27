外网工作：
	下载源码：
		G:\deepseek-harness
	node：
		G:\node-v24.19.0

	设置环境变量：
	检查node、npm、pnqm

	pnpm install --store-dir=../pnpm-store


打包：
	复制
	G:\deepseek-harness
	G:\pnpm-store
	G:\node-v24.19.0
	后压缩

内网启动

安装包：
	I:\deepseek-harness
	I:\pnpm-store
	I:\node-v24.19.0

1.修改文件deepseek-harness目录下 pnpm-workspace.yaml文件
	末尾添加  minimumReleaseAge : 0

2.设置node环境
	set PATH=I:\dsh-offline\node-v24.19.0;I:\dsh-offline\node-v24.19.0\npm-global;I:\dsh-offline\node-v24.19.0\npm-global\node_modules\.bin;%PATH%
	npm config set prefix "I:\dsh-offline\node-v24.19.0\npm-global"
	npm config delete cache --global 2>nul
	npm config delete cache --location user 2>nul

	pnpm config delete globalBinDir --location global
	pnpm config delete globalDir --location global
	pnpm config delete cache-dir --location global
	pnpm config delete state-dir --location global
	pnpm config delete store-dir --location global

3. 启动
	I:\deepseek-harness>pnpm install --offline --frozen-lockfile --store-dir=../pnpm-store 

	pnpm run build

	pnpm dsh web