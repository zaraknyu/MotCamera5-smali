.class public final synthetic Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ExtractorsFactory;
.implements Landroidx/transition/Transition$TransitionNotification;
.implements Landroidx/arch/core/util/Function;
.implements Lcom/google/android/material/textfield/TextInputLayout$LengthCounter;
.implements Lcom/google/gson/internal/ObjectConstructor;
.implements Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;
.implements Lcom/google/android/gms/tasks/OnFailureListener;
.implements Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onClick$com$motorola$camera$fsm$camera$states$runnables$WaitForMemoryRunnable$$ExternalSyntheticLambda0(Lcom/motorola/camera/ui/widgets/AlertPopup;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, [B

    sget-object v0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->TAG:Ljava/lang/String;

    return-object v1

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    iget-object v4, v3, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->progress:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/work/Data;

    :goto_1
    move-object v12, v4

    goto :goto_2

    :cond_0
    sget-object v4, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    goto :goto_1

    :goto_2
    new-instance v7, Landroidx/work/WorkInfo;

    iget-object v4, v3, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v8

    const-string v4, "fromString(id)"

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v3, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Landroidx/work/WorkInfo$State;

    new-instance v10, Ljava/util/HashSet;

    iget-object v4, v3, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    invoke-direct {v10, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v11, v3, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Landroidx/work/Data;

    iget v14, v3, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    iget v4, v3, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->generation:I

    iget-object v5, v3, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->constraints:Landroidx/work/Constraints;

    move-object/from16 p1, v7

    iget-wide v6, v3, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->initialDelay:J

    move-object/from16 v30, v2

    iget-wide v1, v3, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->intervalDuration:J

    const-wide/16 v15, 0x0

    cmp-long v13, v1, v15

    if-eqz v13, :cond_1

    new-instance v15, Landroidx/work/WorkInfo$PeriodicityInfo;

    move/from16 v31, v4

    move-object/from16 v32, v5

    iget-wide v4, v3, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->flexDuration:J

    invoke-direct {v15, v1, v2, v4, v5}, Landroidx/work/WorkInfo$PeriodicityInfo;-><init>(JJ)V

    move-object v4, v15

    goto :goto_3

    :cond_1
    move/from16 v31, v4

    move-object/from16 v32, v5

    const/4 v4, 0x0

    :goto_3
    iget-object v5, v3, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Landroidx/work/WorkInfo$State;

    sget-object v15, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-ne v5, v15, :cond_4

    sget-object v16, Landroidx/work/impl/model/WorkSpec;->WORK_INFO_MAPPER:Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    const/16 v16, 0x1

    if-ne v5, v15, :cond_2

    if-lez v14, :cond_2

    move v5, v13

    move/from16 v13, v16

    goto :goto_4

    :cond_2
    move v5, v13

    const/4 v13, 0x0

    :goto_4
    iget v15, v3, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->backoffPolicy:I

    move-object/from16 v33, v0

    move-wide/from16 v26, v1

    iget-wide v0, v3, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->backoffDelayDuration:J

    move-wide/from16 v17, v0

    iget-wide v0, v3, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->lastEnqueueTime:J

    iget v2, v3, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->periodCount:I

    if-eqz v5, :cond_3

    move/from16 v21, v16

    :goto_5
    move-wide/from16 v19, v0

    goto :goto_6

    :cond_3
    const/16 v21, 0x0

    goto :goto_5

    :goto_6
    iget-wide v0, v3, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->flexDuration:J

    move-wide/from16 v24, v0

    iget-wide v0, v3, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->nextScheduleTimeOverride:J

    move-wide/from16 v28, v0

    move-wide/from16 v22, v6

    move-wide/from16 v16, v17

    move-wide/from16 v18, v19

    move/from16 v20, v2

    invoke-static/range {v13 .. v29}, Landroidx/work/impl/model/WorkSpec$Companion;->calculateNextRunTime(ZIIJJIZJJJJ)J

    move-result-wide v0

    move-wide/from16 v16, v22

    :goto_7
    move-wide/from16 v19, v0

    goto :goto_8

    :cond_4
    move-object/from16 v33, v0

    move-wide/from16 v16, v6

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_7

    :goto_8
    iget v0, v3, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->stopReason:I

    move-object/from16 v7, p1

    move/from16 v21, v0

    move-object/from16 v18, v4

    move v13, v14

    move/from16 v14, v31

    move-object/from16 v15, v32

    invoke-direct/range {v7 .. v21}, Landroidx/work/WorkInfo;-><init>(Ljava/util/UUID;Landroidx/work/WorkInfo$State;Ljava/util/HashSet;Landroidx/work/Data;Landroidx/work/Data;IILandroidx/work/Constraints;JLandroidx/work/WorkInfo$PeriodicityInfo;JI)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v0

    move-object/from16 v0, v33

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_5
    move-object v0, v2

    move-object v1, v0

    goto :goto_9

    :cond_6
    const/4 v1, 0x0

    :goto_9
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public construct()Ljava/lang/Object;
    .locals 1

    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/util/ArrayDeque;

    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    return-object p0

    :pswitch_0
    new-instance p0, Ljava/util/TreeSet;

    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    return-object p0

    :pswitch_4
    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object p0

    :pswitch_5
    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0

    :pswitch_7
    new-instance p0, Lcom/google/gson/internal/LinkedTreeMap;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/internal/LinkedTreeMap;-><init>(Z)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0xc
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

.method public createExtractors()[Landroidx/media3/extractor/Extractor;
    .locals 4

    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Landroidx/media3/extractor/wav/WavExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/wav/WavExtractor;-><init>()V

    filled-new-array {p0}, [Landroidx/media3/extractor/Extractor;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance p0, Landroidx/media3/extractor/ts/TsExtractor;

    new-instance v0, Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    new-instance v1, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    sget-object v2, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object v2, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    invoke-direct {v1, v2}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(Ljava/util/List;)V

    const/4 v2, 0x1

    sget-object v3, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/collection/internal/Lock;

    invoke-direct {p0, v2, v3, v0, v1}, Landroidx/media3/extractor/ts/TsExtractor;-><init>(ILandroidx/media3/extractor/text/SubtitleParser$Factory;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;)V

    filled-new-array {p0}, [Landroidx/media3/extractor/Extractor;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance p0, Landroidx/media3/extractor/ts/PsExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/ts/PsExtractor;-><init>()V

    filled-new-array {p0}, [Landroidx/media3/extractor/Extractor;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public notifyListener(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;)V
    .locals 0

    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    invoke-interface {p1}, Landroidx/transition/Transition$TransitionListener;->onTransitionResume()V

    return-void

    :pswitch_0
    invoke-interface {p1}, Landroidx/transition/Transition$TransitionListener;->onTransitionPause()V

    return-void

    :pswitch_1
    invoke-interface {p1, p2}, Landroidx/transition/Transition$TransitionListener;->onTransitionCancel(Landroidx/transition/Transition;)V

    return-void

    :pswitch_2
    invoke-interface {p1, p2}, Landroidx/transition/Transition$TransitionListener;->onTransitionEnd(Landroidx/transition/Transition;)V

    return-void

    :pswitch_3
    invoke-interface {p1, p2}, Landroidx/transition/Transition$TransitionListener;->onTransitionStart$1(Landroidx/transition/Transition;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Lcom/motorola/camera/ui/widgets/AlertPopup;)V
    .locals 1

    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PERFECT_ME_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/AlertPopup;->dismiss()V

    :cond_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->createGooglePlayStoreIntent()Landroid/content/Intent;

    move-result-object p0

    const/high16 p1, 0x10000000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/CameraApp;->safeStartActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_2
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MOT_SLIDE_SCAN_CAPTURE_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :pswitch_3
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MOT_DOC_SCAN_CAPTURE_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :pswitch_4
    return-void

    :pswitch_5
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SDCARD_INSERTED:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/AlertPopup;->dismiss()V

    return-void

    :pswitch_6
    sget p0, Lcom/motorola/camera/Controller;->CHANGE_BRIGHTNESS_ANGLE:I

    return-void

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    const-string p0, "MLKitBarcodeDetector"

    const-string v0, "Failed to detect barcode: "

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onImageAvailable(Lcom/motorola/camera/utility/ImageReaderWrapper;Ljava/nio/ByteBuffer;)V
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Lcom/motorola/camera/utility/ImageReaderWrapper;->acquireLatestImage()Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingAllowedByCurrentMode()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->onZslImage(Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
