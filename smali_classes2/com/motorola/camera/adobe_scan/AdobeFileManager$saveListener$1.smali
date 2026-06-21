.class public final Lcom/motorola/camera/adobe_scan/AdobeFileManager$saveListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/saving/SaveListener;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/adobe_scan/AdobeFileManager;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/adobe_scan/AdobeFileManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager$saveListener$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeFileManager;

    return-void
.end method


# virtual methods
.method public final onSaveComplete(Lcom/motorola/camera/CameraData;)V
    .locals 3

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager$saveListener$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeFileManager;

    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->firstCameraData:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->_firstCameraData:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/settings/CaptureIntent;

    iget-boolean p0, p0, Lcom/motorola/camera/settings/CaptureIntent;->mSecure:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/SecureMediaIdsManager;->getInstance()Lcom/motorola/camera/SecureMediaIdsManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/motorola/camera/SecureMediaIdsManager;->addMediaId(Landroid/net/Uri;JI)V

    :cond_1
    return-void
.end method

.method public final onSaveError(Lcom/motorola/camera/CameraData;)V
    .locals 0

    return-void
.end method
