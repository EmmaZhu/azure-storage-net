pushd %~dp0
rmdir /s /q .\workspace
mkdir .\workspace
copy .\WindowsAzure.Storage.nuspec .\workspace
mkdir .\workspace\lib\net45
mkdir .\workspace\lib\netstandard1.0
mkdir .\workspace\lib\netstandard1.3
del /q /f *.nupkg
copy .\Lib\WindowsDesktop\bin\Release\Microsoft.WindowsAzure.Storage.Hybrid_2019_03_01.dll .\workspace\lib\net45
copy .\Lib\WindowsDesktop\bin\Release\Microsoft.WindowsAzure.Storage.Hybrid_2019_03_01.pdb .\workspace\lib\net45
copy .\Lib\WindowsDesktop\bin\Release\Microsoft.WindowsAzure.Storage.Hybrid_2019_03_01.xml .\workspace\lib\net45
copy .\Lib\AspNet\Microsoft.WindowsAzure.Storage.Facade\bin\release\netstandard1.0\Microsoft.WindowsAzure.Storage.Hybrid_2019_03_01.dll .\workspace\lib\netstandard1.0
copy .\Lib\AspNet\Microsoft.WindowsAzure.Storage.Facade\bin\release\netstandard1.0\Microsoft.WindowsAzure.Storage.Hybrid_2019_03_01.pdb .\workspace\lib\netstandard1.0
copy .\Lib\AspNet\Microsoft.WindowsAzure.Storage\bin\release\netstandard1.3\Microsoft.WindowsAzure.Storage.Hybrid_2019_03_01.dll .\workspace\lib\netstandard1.3
copy .\Lib\AspNet\Microsoft.WindowsAzure.Storage\bin\release\netstandard1.3\Microsoft.WindowsAzure.Storage.Hybrid_2019_03_01.pdb .\workspace\lib\netstandard1.3
.\Tools\nuget3.4.exe pack .\workspace\WindowsAzure.Storage.nuspec
popd

popd
