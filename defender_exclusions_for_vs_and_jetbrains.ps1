$userPath = $env:USERPROFILE
$pathExclusions = New-Object System.Collections.ArrayList
$processExclusions = New-Object System.Collections.ArrayList

# Visual Studio - exclude the following paths:
$pathExclusions.Add($userPath + '\AppData\Local\Microsoft\VisualStudio') > $null
$pathExclusions.Add('C:\ProgramData\Microsoft\VisualStudio\Packages') > $null
$pathExclusions.Add('C:\Program Files (x86)\Microsoft Visual Studio 14.0') > $null
$pathExclusions.Add('C:\Program Files (x86)\Microsoft Visual Studio 10.0') > $null
$pathExclusions.Add('C:\Program Files (x86)\Microsoft Visual Studio') > $null
$pathExclusions.Add('C:\Program Files (x86)\Microsoft SDKs\NuGetPackages') > $null
$pathExclusions.Add('C:\Program Files (x86)\Microsoft SDKs') > $null
$pathExclusions.Add('C:\Program Files (x86)\MSBuild') > $null
$pathExclusions.Add('C:\Windows\Microsoft.NET') > $null
$pathExclusions.Add('C:\Windows\assembly') > $null

# Visual Studio - exclude the following processes:
$processExclusions.Add('vshost-clr2.exe') > $null
$processExclusions.Add('VSInitializer.exe') > $null
$processExclusions.Add('VSIXInstaller.exe') > $null
$processExclusions.Add('VSLaunchBrowser.exe') > $null
$processExclusions.Add('vsn.exe') > $null
$processExclusions.Add('VsRegEdit.exe') > $null
$processExclusions.Add('VSWebHandler.exe') > $null
$processExclusions.Add('VSWebLauncher.exe') > $null
$processExclusions.Add('XDesProc.exe') > $null
$processExclusions.Add('Blend.exe') > $null
$processExclusions.Add('DDConfigCA.exe') > $null
$processExclusions.Add('devenv.exe') > $null
$processExclusions.Add('FeedbackCollector.exe') > $null
$processExclusions.Add('Microsoft.VisualStudio.Web.Host.exe') > $null
$processExclusions.Add('mspdbsrv.exe') > $null
$processExclusions.Add('MSTest.exe') > $null
$processExclusions.Add('PerfWatson2.exe') > $null
$processExclusions.Add('Publicize.exe') > $null
$processExclusions.Add('QTAgent.exe') > $null
$processExclusions.Add('QTAgent_35.exe') > $null
$processExclusions.Add('QTAgent_40.exe') > $null
$processExclusions.Add('QTAgent32.exe') > $null
$processExclusions.Add('QTAgent32_35.exe') > $null
$processExclusions.Add('QTAgent32_40.exe') > $null
$processExclusions.Add('QTDCAgent.exe') > $null
$processExclusions.Add('QTDCAgent32.exe') > $null
$processExclusions.Add('StorePID.exe') > $null
$processExclusions.Add('T4VSHostProcess.exe') > $null
$processExclusions.Add('TailoredDeploy.exe') > $null
$processExclusions.Add('TCM.exe') > $null
$processExclusions.Add('TextTransform.exe') > $null
$processExclusions.Add('TfsLabConfig.exe') > $null
$processExclusions.Add('UserControlTestContainer.exe') > $null
$processExclusions.Add('vb7to8.exe') > $null
$processExclusions.Add('VcxprojReader.exe') > $null
$processExclusions.Add('VsDebugWERHelper.exe') > $null
$processExclusions.Add('VSFinalizer.exe') > $null
$processExclusions.Add('VsGa.exe') > $null
$processExclusions.Add('VSHiveStub.exe') > $null
$processExclusions.Add('vshost.exe') > $null
$processExclusions.Add('vshost32.exe') > $null
$processExclusions.Add('vshost32-clr2.exe') > $null

# JetBrains
$processExclusions.Add('jetbrains-toolbox.exe') > $null
$processExclusions.Add('jetbrains-toolbox-cef.exe') > $null
$processExclusions.Add('jetbrains-toolbox-cef-helper.exe') > $null
$processExclusions.Add('JetBrains.EntityFramework.Runner620.exe') > $null
$processExclusions.Add('JetBrains.MsBuild.TaskEntryPoint.exe') > $null
$processExclusions.Add('JetBrains.Platform.Satellite.exe') > $null
$processExclusions.Add('JetLauncher32.exe') > $null
$processExclusions.Add('JetLauncher32c.exe') > $null
$processExclusions.Add('JetLauncher64.exe') > $null
$processExclusions.Add('JetLauncher64c.exe') > $null
$processExclusions.Add('JetLauncherIL.exe') > $null
$processExclusions.Add('JetLauncherILc.exe') > $null
$processExclusions.Add('OperatorsResolveCacheGenerator.exe') > $null
$processExclusions.Add('PsiGen.exe') > $null
$processExclusions.Add('ReSharperTestRunner32.exe') > $null
$processExclusions.Add('ReSharperTestRunner64.exe') > $null
$processExclusions.Add('ReSharperTestRunnerIL.exe') > $null
$processExclusions.Add('JetBrains.ReSharper.Features.XamlPreview.External.exe') > $null
$processExclusions.Add('JetBrains.ReSharper.Host.exe') > $null
$processExclusions.Add('JetBrains.ReSharper.Host64.exe') > $null
$processExclusions.Add('JetBrains.ReSharper.Roslyn.Worker.exe') > $null
$processExclusions.Add('RiderClrProcessEnumerator32.exe') > $null
$processExclusions.Add('RiderClrProcessEnumeratorIL.exe') > $null
$processExclusions.Add('TokenGenerator.exe') > $null
$processExclusions.Add('xamarin-component.exe') > $null
$processExclusions.Add('ClrStack.x64.exe') > $null
$processExclusions.Add('ClrStack.x86.exe') > $null
$processExclusions.Add('CsLex.exe') > $null
$processExclusions.Add('ErrorsGen.exe') > $null
$processExclusions.Add('JetBrains.Debugger.Worker.exe') > $null
$processExclusions.Add('JetBrains.Debugger.Worker32c.exe') > $null
$processExclusions.Add('JetBrains.Debugger.Worker64c.exe') > $null
$processExclusions.Add('dotPeek32.exe') > $null
$processExclusions.Add('dotPeek64.exe') > $null
$processExclusions.Add('DotTabWellScattered32.exe') > $null
$processExclusions.Add('DotTabWellScattered64.exe') > $null
$processExclusions.Add('DotTabWellScatteredIL.exe') > $null
$processExclusions.Add('JetBrains.Platform.Installer.Bootstrap.exe') > $null
$processExclusions.Add('JetBrains.Platform.Installer.Cleanup.exe') > $null
$processExclusions.Add('JetBrains.Platform.Installer.exe') > $null
$processExclusions.Add('CleanUpProfiler.x64.exe') > $null
$processExclusions.Add('CleanUpProfiler.x86.exe') > $null
$processExclusions.Add('Configuration2Xml32.exe') > $null
$processExclusions.Add('Configuration2Xml64.exe') > $null
$processExclusions.Add('ConsoleProfiler.exe') > $null
$processExclusions.Add('DotTraceLauncher.exe') > $null
$processExclusions.Add('dotTraceView32.exe') > $null
$processExclusions.Add('dotTraceView64.exe') > $null
$processExclusions.Add('JetBrains.Common.ElevationAgent.exe') > $null
$processExclusions.Add('JetBrains.Common.ExternalStorage.exe') > $null
$processExclusions.Add('JetBrains.Common.ExternalStorage.x86.exe') > $null
$processExclusions.Add('JetBrains.dotTrace.IntegrationDemo.exe') > $null
$processExclusions.Add('Reporter.exe') > $null
$processExclusions.Add('SnapshotStat.exe') > $null
$processExclusions.Add('Timeline32.exe') > $null
$processExclusions.Add('Timeline64.exe') > $null
$processExclusions.Add('dotMemory.UI.32.exe') > $null
$processExclusions.Add('dotMemory.UI.64.exe') > $null
$processExclusions.Add('dotMemoryUnit.exe') > $null
$processExclusions.Add('JetBrains.dotMemory.Console.SingleExe.exe') > $null
$processExclusions.Add('JetBrains.dotMemoryUnit.Server.exe') > $null
$processExclusions.Add('restarter.exe') > $null
$processExclusions.Add('rider64.exe') > $null
$processExclusions.Add('runnerw.exe') > $null
$processExclusions.Add('runnerw64.exe') > $null
$processExclusions.Add('dotTrace32.exe') > $null
$processExclusions.Add('dotTrace64.exe') > $null
$processExclusions.Add('WinProcessListHelper.exe') > $null
$processExclusions.Add('elevator.exe') > $null
$processExclusions.Add('fsnotifier.exe') > $null
$processExclusions.Add('fsnotifier64.exe') > $null
$processExclusions.Add('launcher.exe') > $null
$processExclusions.Add('NGen Rider Assemblies.exe') > $null
$processExclusions.Add('idea.exe') > $null
$processExclusions.Add('idea64.exe') > $null
$processExclusions.Add('JetBrains.Etw.Collector.Host.exe') > $null

Write-Host "Create Windows Defender exclusions for common VS / JetBrains folders and processes."
Write-Host ""
$projectsFolder = Read-Host 'What is the location of your Projects folder? (example: d:\dev)'

Write-Host ""
Write-Host "Adding Path Exclusion: " $projectsFolder
Add-MpPreference -ExclusionPath $projectsFolder

foreach ($exclusion in $pathExclusions) 
{
    Write-Host "Adding Path Exclusion: " $exclusion
    Add-MpPreference -ExclusionPath $exclusion
}

foreach ($exclusion in $processExclusions)
{
    Write-Host "Adding Process Exclusion: " $exclusion
    Add-MpPreference -ExclusionProcess $exclusion
}

Write-Host ""
Write-Host "Your Exclusions:"

$prefs = Get-MpPreference
$prefs.ExclusionPath
$prefs.ExclusionProcess

Write-Host ""
Write-Host "Done"
Write-Host ""