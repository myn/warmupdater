package warmupdaterapp.interfaces;
import warmupdaterapp.customTypes.UpdateInfo;
import warmupdaterapp.interfaces.IDownloadServiceCallback;

interface IDownloadService
{
    void Download(in UpdateInfo ui);
    UpdateInfo getCurrentUpdate();
    String getCurrentMirrorName();
    boolean DownloadRunning();
    void PauseDownload();
    void cancelDownload();
    void registerCallback(in IDownloadServiceCallback cb);
    void unregisterCallback(in IDownloadServiceCallback cb);
}