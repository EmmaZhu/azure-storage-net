pushd %~dp0
call Tools\nuget3.4.exe install Microsoft.NETCore.Runtime.CoreCLR -Version 1.1.0
call C:\Users\emmazhu\Downloads\dotnet-dev-win-x64.1.0.0-preview2-1-003177\dotnet restore
cd Lib\AspNet\Microsoft.WindowsAzure.Storage
call C:\Users\emmazhu\Downloads\dotnet-dev-win-x64.1.0.0-preview2-1-003177\dotnet build --configuration release
cd ..\Microsoft.WindowsAzure.Storage.Facade
call C:\Users\emmazhu\Downloads\dotnet-dev-win-x64.1.0.0-preview2-1-003177\dotnet build --configuration release
popd
