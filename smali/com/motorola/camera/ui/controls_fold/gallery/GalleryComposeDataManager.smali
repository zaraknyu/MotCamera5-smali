.class public final Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/saving/SaveListener;


# static fields
.field public static sInstance:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;


# instance fields
.field public mCurrentDateModified:J

.field public final mKeyList:Ljava/util/List;

.field public final mMediaDataMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "synchronizedMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->mMediaDataMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "synchronizedList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->mKeyList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final declared-synchronized addCameraData(Lcom/motorola/camera/CameraData;Z)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    const-string v2, "cameraData"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->mCurrentDateModified:J

    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getDateModified()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p2, :cond_2

    iget-object v6, v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->mKeyList:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->mKeyList:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    move v6, v4

    :goto_0
    iget-object v7, v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->mMediaDataMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    :goto_1
    move v4, v5

    goto :goto_2

    :cond_2
    move v6, v4

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    move-object v9, v4

    check-cast v9, Landroid/util/Size;

    new-instance v7, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;

    new-instance v8, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v8, v9}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    invoke-direct/range {v7 .. v21}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;-><init>(Lcom/motorola/camera/PreviewSize;Landroid/util/Size;JZZIIIIIFJ)V

    iget-object v4, v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->mMediaDataMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v8, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;

    invoke-direct {v8, v0, v7}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;-><init>(Lcom/motorola/camera/CameraData;Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;)V

    invoke-interface {v4, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p2, :cond_5

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getDateModified()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->mCurrentDateModified:J

    iget-object v0, v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->mMediaDataMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;

    sget-object v2, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->GALLERY_COMPOSE_INSERT_DATA:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final onDeleteComplete(Lcom/motorola/camera/CameraData;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->mKeyList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->mMediaDataMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public final onSaveComplete(Lcom/motorola/camera/CameraData;)V
    .locals 3

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->isFromCurrentSession()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getCaptureMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/16 v2, 0xd

    if-eq v0, v2, :cond_3

    const/16 v2, 0x34

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorVideoMode(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyVideoMode(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoMode(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoMode(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureVideoMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v2, Lcom/motorola/camera/ShotType;->VIDEO_SNAPSHOT:Lcom/motorola/camera/ShotType;

    if-ne v0, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->addCameraData(Lcom/motorola/camera/CameraData;Z)V

    return-void
.end method

.method public final onSaveError(Lcom/motorola/camera/CameraData;)V
    .locals 0

    return-void
.end method
