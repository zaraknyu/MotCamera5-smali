.class public final synthetic Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->animateShow()V

    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->fullScreen:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda0;

    const/16 v1, 0x1a

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :pswitch_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->modeChange:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->thumbnailUi:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->thumbnailChangeController:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->refreshing:Z

    if-ne v0, v3, :cond_2

    goto :goto_3

    :cond_2
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->isCapturing:Z

    if-nez v0, :cond_7

    invoke-static {}, Lcom/motorola/camera/Util;->setupGalleryWithCustomAnimation()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->thumbnailChangeController:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isGalleryAvailable(Lcom/motorola/camera/CameraData;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v2, 0x7f12011b

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/4 v2, 0x4

    iput v2, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-static {v1, p0, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    goto :goto_3

    :cond_4
    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->fullScreen:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "OPEN_GALLERY_HAS_VISIBLE_DATA"

    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->thumbnailChangeController:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;

    if-eqz v5, :cond_5

    iget-object v1, v5, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    :cond_5
    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move v3, v2

    :goto_2
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "OPEN_GALLERY_TRIGGER_BY_GALLERY_COMPOSE"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->OPEN_PHOTO:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v3, v0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {p0, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_7
    :goto_3
    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->thumbnailUi:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;

    if-eqz p0, :cond_8

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->setClickEnabled(Z)V

    :cond_8
    return-void

    :pswitch_3
    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->isCapturing:Z

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->thumbnailUi:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->setClickEnabled(Z)V

    :cond_9
    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->thumbnailUi:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;

    if-eqz p0, :cond_a

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->setClickEnabled(Z)V

    :cond_a
    return-void

    :pswitch_6
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->isCapturing:Z

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->fullScreen:Z

    return-void

    :pswitch_7
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->modeChange:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->show()V

    return-void

    :pswitch_8
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->thumbnailUi:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;

    if-eqz p0, :cond_b

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->setClickEnabled(Z)V

    :cond_b
    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->photosPreloader:Lcom/google/android/gms/tasks/zzr;

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "getContext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    :try_start_0
    iget-boolean v1, v0, Lcom/google/android/gms/tasks/zzr;->zzc:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_c

    monitor-exit v0

    goto :goto_4

    :cond_c
    :try_start_1
    iget-object v1, v0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/provider/photos/PhotosPreloader$serviceConnection$1;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v2, v0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    iget-object p0, v0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    invoke-virtual {p0}, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    :goto_4
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_d
    const-string/jumbo p0, "photosPreloader"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :pswitch_a
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->thumbnailChangeController:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->queryLastCapture$1()V

    :cond_e
    return-void

    :pswitch_b
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->fullScreen:Z

    return-void

    :pswitch_c
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->thumbnailUi:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->reset()V

    :cond_f
    return-void

    :pswitch_d
    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->fullScreen:Z

    return-void

    :pswitch_e
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->cancelAnimation()V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->thumbnailUi:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;

    if-eqz p0, :cond_10

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->setClickEnabled(Z)V

    :cond_10
    return-void

    :pswitch_f
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->thumbnailUi:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;

    if-eqz p0, :cond_11

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->setClickEnabled(Z)V

    :cond_11
    return-void

    :pswitch_10
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->photosPreloader:Lcom/google/android/gms/tasks/zzr;

    if-eqz v0, :cond_19

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v4, "getContext(...)"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashSet;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f03000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v5, Lcom/tinder/StateMachine;

    invoke-direct {v5, p0, v4}, Lcom/tinder/StateMachine;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    iget-object v4, v0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    invoke-virtual {v4}, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/tinder/StateMachine;->isTrustedAuthority(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v4, v0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    const-string v5, "getVersion"

    invoke-virtual {v4, v5, v1}, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->callProviderMethod(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_12

    const-string/jumbo v4, "version"

    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_5

    :cond_12
    move v1, v2

    :goto_5
    const/4 v4, 0x2

    if-lt v1, v4, :cond_13

    move v2, v3

    :cond_13
    if-nez v2, :cond_16

    const-string p0, "PhotosPreloader"

    iget-object v0, v0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    iget-object v0, v0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->providerType:Lcom/motorola/camera/provider/photos/PhotosProviderCaller$ProviderType;

    sget-object v1, Lcom/motorola/camera/provider/photos/PhotosProviderCaller$ProviderType;->TYPE_PHOTO:Lcom/motorola/camera/provider/photos/PhotosProviderCaller$ProviderType;

    if-ne v0, v1, :cond_15

    sget-boolean v0, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->GALLERY_AUTHORITY_URI:Landroid/net/Uri;

    goto :goto_6

    :cond_14
    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->PHOTOS_AUTHORITY_URI:Landroid/net/Uri;

    goto :goto_6

    :cond_15
    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->AI_PERSONAL_COLOR_TONE_AUTHORITY_URI:Landroid/net/Uri;

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content resolver return not supported version. Content uri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Minimum valid version: 2"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_16
    sget-boolean v1, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v1

    if-nez v1, :cond_1a

    monitor-enter v0

    :try_start_3
    iget-boolean v1, v0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    if-eqz v1, :cond_17

    const-string p0, "PhotosPreloader"

    const-string v1, "Skipping attempt to connect to already connected service."

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    goto :goto_9

    :catchall_1
    move-exception p0

    goto :goto_8

    :cond_17
    :try_start_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.android.apps.photos"

    const-string v3, "com.google.android.apps.photos.cameraassistant.CameraAssistantService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v2, v0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/provider/photos/PhotosPreloader$serviceConnection$1;

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    iput-boolean p0, v0, Lcom/google/android/gms/tasks/zzr;->zzc:Z
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_7

    :catch_0
    move-exception p0

    :try_start_6
    const-string v1, "PhotosPreloader"

    const-string v2, "Unable to connect to assistant service"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_7
    monitor-exit v0

    goto :goto_9

    :goto_8
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p0

    :cond_18
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, " is not authorized to access the content"

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    const-string/jumbo p0, "photosPreloader"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1a
    :goto_9
    return-void

    :pswitch_11
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->animateHide()V

    return-void

    :pswitch_12
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove()V

    return-void

    :pswitch_13
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->thumbnailUi:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;

    if-eqz p0, :cond_1b

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->setClickEnabled(Z)V

    :cond_1b
    return-void

    :pswitch_14
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->isCapturing:Z

    return-void

    :pswitch_15
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->thumbnailUi:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;

    if-eqz p0, :cond_1c

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->setClickEnabled(Z)V

    :cond_1c
    return-void

    :pswitch_16
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->show()V

    return-void

    :pswitch_17
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->hide()V

    return-void

    :pswitch_18
    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->modeChange:Z

    return-void

    :pswitch_19
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->fullScreen:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
