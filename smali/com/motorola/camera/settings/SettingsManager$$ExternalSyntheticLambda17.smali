.class public final synthetic Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/settings/CameraType;


# direct methods
.method public synthetic constructor <init>(ILcom/motorola/camera/settings/CameraType;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda17;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda17;->f$0:Lcom/motorola/camera/settings/CameraType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda17;->$r8$classId:I

    check-cast p1, Lcom/motorola/camera/VideoFormat;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/motorola/camera/VideoHelper;->SUPPORTED_VIDEO_SIZES_SQUARE:Ljava/util/List;

    iget-object p1, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda17;->f$0:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isCliHdWidescreenAspectRatioSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/VideoHelper;->SUPPORTED_VIDEO_SIZES_CLI_16V9:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/motorola/camera/VideoFormat;->CLI_FHD:Landroid/util/Size;

    invoke-virtual {p1, p0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda17;->f$0:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->isCliCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isCliHdWidescreenAspectRatioSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    goto :goto_2

    :cond_4
    sget-object p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->CLI_VIDEO:Lcom/motorola/camera/PreviewSize$AspectRatio;

    :goto_2
    invoke-static {p1, p0}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Landroid/util/Size;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    const/4 p0, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 p0, 0x1

    :goto_4
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
