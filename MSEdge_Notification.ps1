Add-Type -AssemblyName System.Runtime.WindowsRuntime

[Windows.UI.Notifications.ToastNotificationManager, Windows.UI.Notifications, ContentType = WindowsRuntime] | Out-Null
[Windows.Data.Xml.Dom.XmlDocument, Windows.Data.Xml.Dom.XmlDocument, ContentType = WindowsRuntime] | Out-Null

$AUMID="MSEdge"

$xml = @"
<toast>
  <visual>
    <binding template="ToastGeneric">
      <text>Please Login to your Microsoft Account !</text>
      <text hint-style="subtitle">Verify Your Microsoft Account.</text>
    </binding>
  </visual>
  <actions>
    <action content="Open" activationType="protocol" arguments="https://login.live.com" />
  </actions>
</toast>
"@

$doc = New-Object Windows.Data.Xml.Dom.XmlDocument
$doc.LoadXml($xml)

$toast = [Windows.UI.Notifications.ToastNotification]::new($doc)
$notifier = [Windows.UI.Notifications.ToastNotificationManager]::CreateToastNotifier($AUMID)
$notifier.Show($toast)
