.class public final Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;
.implements Lcom/motorola/camera/ui/widgets/gl/PostCapture$PostCaptureListener;
.implements Lcom/motorola/camera/saving/SaveListener;


# instance fields
.field public final cameraDataMap:Ljava/util/LinkedHashMap;

.field public final eventHandler:Lcom/motorola/camera/EventListener;

.field public executor:Ljava/util/concurrent/ExecutorService;

.field public largeKindDataId:J

.field public lastCameraData:Lcom/motorola/camera/CameraData;

.field public final onImageAvailable:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda8;

.field public final onLargeKindImageAvailable:Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl$$ExternalSyntheticLambda0;

.field public final onSaving:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda10;

.field public queryLastCaptureTask:Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;

.field public refreshing:Z

.field public updateOnly:Z

.field public visibleCameraData:Lcom/motorola/camera/CameraData;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/motorola/camera/EventListener;Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda8;Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl$$ExternalSyntheticLambda0;Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda10;)V
    .locals 1

    const-string v0, "eventHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->executor:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->eventHandler:Lcom/motorola/camera/EventListener;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->onImageAvailable:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda8;

    iput-object p4, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->onLargeKindImageAvailable:Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl$$ExternalSyntheticLambda0;

    iput-object p5, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->onSaving:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda10;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->cameraDataMap:Ljava/util/LinkedHashMap;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->largeKindDataId:J

    return-void
.end method

.method public static synthetic handleCameraData$default(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;Lcom/motorola/camera/CameraData;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    .locals 2

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v1

    :cond_1
    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->handleCameraData(Lcom/motorola/camera/CameraData;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    return-void
.end method


# virtual methods
.method public final displayCliPreview(Lcom/motorola/camera/CameraData;)V
    .locals 9

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v0

    iget-object v1, p1, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoBoothMode()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v4, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    if-ne v2, v4, :cond_0

    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotCount:I

    if-le v0, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "THUMB_PATH"

    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-nez v2, :cond_1

    if-nez v4, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->eventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v5

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupportedMode(I)Z

    move-result p0

    const/4 v6, 0x2

    if-nez p0, :cond_2

    if-ne v5, v6, :cond_4

    :cond_2
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_4

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v3, :cond_4

    new-instance p0, Landroid/content/Intent;

    const-string v3, "com.motorola.camera5.CLI_CONTENT_ACTION_RECEIVER"

    invoke-direct {p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "GLOBAL_UUID"

    invoke-virtual {v1, v3}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {p0, v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "com.motorola.camera5.EXTRA_ACTION"

    invoke-virtual {p0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "com.motorola.camera5.EXTRA_CONTENT"

    const/4 v5, 0x3

    invoke-virtual {p0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "FILE_NAME"

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "FILE_PATH"

    invoke-virtual {v1, v3}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "THUMB_WIDTH"

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getThumbWidth()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "THUMB_HEIGHT"

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getThumbHeight()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ORIENTATION"

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "DATE_TAKEN"

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v5

    invoke-virtual {p0, v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "DATE_MODIFIED"

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDateModified()J

    move-result-wide v5

    invoke-virtual {p0, v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const-string p1, "URI"

    invoke-virtual {p0, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_0
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v0, "getInstance(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final getCameraData$1()Lcom/motorola/camera/CameraData;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    return-object p0
.end method

.method public final handleCameraData(Lcom/motorola/camera/CameraData;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_27

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_14

    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v0

    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_2
    move-object v7, v0

    :goto_2
    const-string/jumbo v8, "substring(...)"

    const-string v9, "."

    if-eqz v6, :cond_5

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v7, v9, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {v6, v9, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "."

    const/4 v10, 0x6

    invoke-static {v6, v4, v10, v9}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/String;IILjava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "."

    invoke-static {v7, v4, v10, v9}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/String;IILjava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v7, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result v6

    goto :goto_4

    :cond_5
    :goto_3
    move v6, v4

    :goto_4
    if-eqz v6, :cond_6

    goto/16 :goto_d

    :cond_6
    iget-object v6, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v7, Lcom/motorola/camera/ShotType;->VIDEO_SNAPSHOT:Lcom/motorola/camera/ShotType;

    if-eq v6, v7, :cond_a

    sget-object v7, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    if-ne v6, v7, :cond_7

    iget v6, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotCount:I

    if-le v6, v1, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v6, v4

    goto :goto_5

    :cond_8
    const-string v7, ".dng"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    :goto_5
    if-eqz v6, :cond_b

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->FILE_FORMAT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatSupportedByCurrentMode()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x2

    if-ne v7, v6, :cond_9

    move v6, v1

    goto :goto_6

    :cond_9
    move v6, v4

    :goto_6
    if-eqz v6, :cond_b

    :cond_a
    :goto_7
    move v5, v4

    goto :goto_e

    :cond_b
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_d

    if-eqz v2, :cond_c

    iget v5, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_8

    :cond_c
    move-object v5, v0

    :goto_8
    if-nez v5, :cond_a

    goto :goto_d

    :cond_d
    if-eqz v2, :cond_e

    iget v5, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    iget v6, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    if-ne v5, v6, :cond_e

    move v5, v1

    goto :goto_9

    :cond_e
    move v5, v4

    :goto_9
    if-eqz v5, :cond_f

    goto :goto_d

    :cond_f
    iget v5, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    if-eqz v2, :cond_10

    iget v6, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    goto :goto_a

    :cond_10
    move v6, v4

    :goto_a
    if-ge v5, v6, :cond_12

    if-eqz v2, :cond_11

    iget v5, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_b

    :cond_11
    move-object v5, v0

    :goto_b
    if-nez v5, :cond_a

    goto :goto_d

    :cond_12
    if-eqz v2, :cond_13

    iget v6, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    if-ne v6, v5, :cond_13

    move v5, v1

    goto :goto_c

    :cond_13
    move v5, v4

    :goto_c
    xor-int/2addr v5, v1

    goto :goto_e

    :cond_14
    :goto_d
    move v5, v1

    :goto_e
    if-eqz v5, :cond_2a

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda1;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;I)V

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->submitTask$1(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    if-eqz v2, :cond_15

    if-eqz v3, :cond_15

    iget v5, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    iget v6, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    if-ne v5, v6, :cond_15

    move v5, v1

    goto :goto_f

    :cond_15
    move v5, v4

    :goto_f
    if-nez v5, :cond_17

    if-nez v2, :cond_16

    if-nez v3, :cond_16

    goto :goto_10

    :cond_16
    move v2, v4

    goto :goto_11

    :cond_17
    :goto_10
    move v2, v1

    :goto_11
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->updateOnly:Z

    if-eqz v5, :cond_18

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v2

    if-nez v2, :cond_18

    if-nez p4, :cond_18

    goto/16 :goto_17

    :cond_18
    if-nez p2, :cond_23

    if-eqz p3, :cond_19

    goto/16 :goto_15

    :cond_19
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    if-eqz p1, :cond_2a

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->eventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p2}, Lcom/motorola/camera/EventListener;->getUiContext()Landroid/content/Context;

    move-result-object p2

    sget-boolean p3, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->ENABLE_NEW_ENGINE:Z

    if-eqz p3, :cond_21

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getThumbWidth()I

    move-result p2

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getThumbHeight()I

    move-result p3

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result p4

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v2

    mul-int v3, p2, p3

    if-nez v3, :cond_1a

    new-instance p4, Landroid/util/Size;

    invoke-direct {p4, p2, p3}, Landroid/util/Size;-><init>(II)V

    goto :goto_14

    :cond_1a
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f07006f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v5

    mul-int/2addr v5, v3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v6

    div-int/2addr v5, v6

    const/16 v6, 0x5a

    if-ge p2, p3, :cond_1b

    if-eq p4, v6, :cond_1c

    const/16 v7, 0x10e

    if-eq p4, v7, :cond_1c

    :cond_1b
    if-le p2, p3, :cond_1d

    if-eqz p4, :cond_1c

    const/16 v7, 0xb4

    if-ne p4, v7, :cond_1d

    :cond_1c
    new-instance p4, Landroid/util/Size;

    invoke-direct {p4, v5, v3}, Landroid/util/Size;-><init>(II)V

    goto :goto_12

    :cond_1d
    new-instance p4, Landroid/util/Size;

    invoke-direct {p4, v3, v5}, Landroid/util/Size;-><init>(II)V

    :goto_12
    if-ne v2, v1, :cond_1f

    new-instance p4, Landroid/util/Size;

    invoke-direct {p4, v3, v5}, Landroid/util/Size;-><init>(II)V

    if-le p2, p3, :cond_1e

    goto :goto_13

    :cond_1e
    move v6, v4

    :goto_13
    invoke-static {p4, v6}, Lcom/motorola/camera/utility/ColorUtil;->convertSize(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object p4

    :cond_1f
    :goto_14
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getThumbWidth()I

    move-result p2

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getThumbHeight()I

    move-result p3

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v2

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v3

    invoke-static {p2, p3, v2, v3}, Lcom/motorola/camera/thumbnail/MediaUtil;->getOverrideSize(IIII)Landroid/util/Size;

    move-result-object p2

    invoke-static {p4}, Lcom/motorola/camera/utility/ColorUtil;->isSizeValid(Landroid/util/Size;)Z

    move-result p3

    if-eqz p3, :cond_20

    invoke-static {p2}, Lcom/motorola/camera/utility/ColorUtil;->isSizeValid(Landroid/util/Size;)Z

    move-result p3

    if-eqz p3, :cond_20

    invoke-static {}, Landroidx/media3/extractor/text/pgs/PgsParser;->getInstance()Landroidx/media3/extractor/text/pgs/PgsParser;

    move-result-object p3

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;

    invoke-direct {v1, p3, v0}, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;-><init>(Landroidx/media3/extractor/text/pgs/PgsParser;Landroid/net/Uri;)V

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v1, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mFileName:Ljava/lang/String;

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result p3

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result p4

    iput p3, v1, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mThumbnailWidth:I

    iput p4, v1, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mThumbnailHeight:I

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    iput p3, v1, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mWidth:I

    iput p2, v1, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mHeight:I

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result p2

    iput p2, v1, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mOrientation:I

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide p2

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDateModified()J

    move-result-wide v2

    iput-wide p2, v1, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mDateTaken:J

    iput-wide v2, v1, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mDateModified:J

    iput-boolean v4, v1, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mSupportMinorKey:Z

    new-instance p2, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;Lcom/motorola/camera/CameraData;I)V

    invoke-virtual {v1, p2}, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->into(Lcom/google/mlkit/common/internal/zzb;)V

    return-void

    :cond_20
    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->EMPTY:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->setBitmap(Lcom/motorola/camera/CameraData;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;Z)V

    return-void

    :cond_21
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->sInstance:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1, p2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->loadThumbnail(Landroid/content/Context;Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;Landroid/util/Size;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_22
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->EMPTY:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->setBitmap(Lcom/motorola/camera/CameraData;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;Z)V

    return-void

    :cond_23
    :goto_15
    if-eqz p2, :cond_26

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    iget-boolean p4, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->updateOnly:Z

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v0

    if-ne v0, v1, :cond_24

    sget-object p4, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->VIDEO:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    goto :goto_16

    :cond_24
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v0

    if-eqz v0, :cond_25

    if-nez p4, :cond_25

    sget-object p4, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->SEGMENTATION_FIRST_SHOT:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    goto :goto_16

    :cond_25
    sget-object p4, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->PHOTO:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    :goto_16
    invoke-virtual {p0, p1, p2, p4, v4}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->setBitmap(Lcom/motorola/camera/CameraData;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;Z)V

    :cond_26
    if-eqz p3, :cond_2a

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    invoke-virtual {p0, p1, p3, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->setLargeKindBitmap(Lcom/motorola/camera/CameraData;Landroid/graphics/Bitmap;Z)V

    return-void

    :cond_27
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isPhotosProcessingSupported()Z

    move-result p1

    if-eqz p1, :cond_2a

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->EMPTY:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    invoke-virtual {p0, v0, v0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->setBitmap(Lcom/motorola/camera/CameraData;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;Z)V

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p0, p0, Lcom/motorola/camera/CameraApp;->mSecure:Z

    if-eqz p0, :cond_2a

    invoke-static {}, Lcom/motorola/camera/SecureMediaIdsManager;->getInstance()Lcom/motorola/camera/SecureMediaIdsManager;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/SecureMediaIdsManager;->mMediaIds:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    sget-object p0, Lcom/motorola/camera/SecureDataHelper;->sInstance:Lcom/motorola/camera/SecureDataHelper;

    if-nez p0, :cond_28

    new-instance p0, Lcom/motorola/camera/SecureDataHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/motorola/camera/SecureDataHelper;-><init>(I)V

    sput-object p0, Lcom/motorola/camera/SecureDataHelper;->sInstance:Lcom/motorola/camera/SecureDataHelper;

    :cond_28
    sget-object p0, Lcom/motorola/camera/SecureDataHelper;->sInstance:Lcom/motorola/camera/SecureDataHelper;

    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Ljava/util/LinkedList;

    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_17

    :cond_29
    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    :cond_2a
    :goto_17
    return-void
.end method

.method public final onDeleteComplete(Lcom/motorola/camera/CameraData;)V
    .locals 4

    sget-boolean p1, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz p1, :cond_7

    sget-object p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->sInstance:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;

    if-nez p1, :cond_0

    new-instance p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;

    invoke-direct {p1}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;-><init>()V

    sput-object p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->sInstance:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;

    :cond_0
    sget-object p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->sInstance:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->mKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    monitor-exit p1

    move-object v0, v1

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v0, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->mKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->mKeyList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->mMediaDataMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;->cameraData:Lcom/motorola/camera/CameraData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_2
    move-object v0, v1

    :goto_0
    monitor-exit p1

    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_2

    :cond_3
    move-object p1, v1

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v1

    :goto_3
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    if-eqz v0, :cond_6

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    const/16 p1, 0xe

    invoke-static {p0, v0, v1, v1, p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->handleCameraData$default(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;Lcom/motorola/camera/CameraData;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->queryLastCapture$1()V

    return-void

    :goto_4
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_7
    :goto_5
    return-void
.end method

.method public final onPostCaptureAvailable(Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;)V
    .locals 7

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;

    move-result-object v3

    iget v5, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    iget-object v2, p1, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mExtraJson:Ljava/lang/String;

    new-instance v1, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;

    move-object v4, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Lcom/motorola/camera/CameraData;Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;ILandroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;)V

    invoke-virtual {v4, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->submitTask$1(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onSaveComplete(Lcom/motorola/camera/CameraData;)V
    .locals 2

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->isFromCurrentSession()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;Lcom/motorola/camera/CameraData;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->submitTask$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSaveError(Lcom/motorola/camera/CameraData;)V
    .locals 0

    return-void
.end method

.method public final onSaveProcessing(Lcom/motorola/camera/CameraData;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->onSaving:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda10;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda10;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final queryLastCapture$1()V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->submitTask$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bridge synthetic setBitmap(Lcom/motorola/camera/CameraData;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->setBitmap(Lcom/motorola/camera/CameraData;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;Z)V

    return-void
.end method

.method public final setBitmap(Lcom/motorola/camera/CameraData;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;Z)V
    .locals 7

    .line 2
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->updateOnly:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->onImageAvailable:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda8;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda8;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setLargeKindBitmap(Lcom/motorola/camera/CameraData;Landroid/graphics/Bitmap;Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    iput-wide v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->largeKindDataId:J

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->onLargeKindImageAvailable:Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl$$ExternalSyntheticLambda0;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final submitTask$1(Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz p0, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    return-void
.end method
