.class public final synthetic Landroidx/work/impl/utils/WorkProgressUpdater$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Landroidx/work/impl/utils/WorkProgressUpdater$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/impl/utils/WorkProgressUpdater$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/impl/utils/WorkProgressUpdater$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/work/impl/utils/WorkProgressUpdater$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Landroidx/work/impl/utils/WorkProgressUpdater$$ExternalSyntheticLambda0;->$r8$classId:I

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/work/impl/utils/WorkProgressUpdater$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/work/impl/utils/WorkProgressUpdater$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/work/impl/utils/WorkProgressUpdater$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/motorola/camera/ui/controls_fold/gallery/FadeScaleAnimator;

    check-cast v4, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/FadeScaleAnimator;->itemAddListener:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_1

    sget-object v5, Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;->ON_ANIMATION_END:Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;

    iget-object v4, v4, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->cameraData:Lcom/motorola/camera/CameraData;

    if-eqz v4, :cond_0

    sget-object v2, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;->INIT:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;

    invoke-virtual {v0, v5, v4}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;->onAction(Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;Lcom/motorola/camera/CameraData;)V

    goto :goto_0

    :cond_0
    const-string p0, "cameraData"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-object v1

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialModeViewHolder;

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialModeAdapter;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialModeViewHolder;->itemVideo:Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;

    iget-object v0, v4, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->mBackgroundStr:Ljava/lang/String;

    const-string/jumbo v2, "tutorial/"

    invoke-static {v2, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v2, v3, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialModeAdapter;->screeWidth:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "assetPath"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v4, Lcom/motorola/camera/AppFeatures$Feature;->PORTRAIT_LANDSCAPE_CLI:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v3, v3, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v3, Ljava/util/EnumSet;

    invoke-virtual {v3, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    const/16 v4, 0x5a

    int-to-float v4, v4

    iget v5, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->videoSize:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v7, v5, v6

    invoke-virtual {v3, v4, v7, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    int-to-float v4, v2

    div-float v5, v4, v5

    invoke-virtual {v3, v5, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    div-float/2addr v4, v6

    sub-float/2addr v7, v4

    invoke-virtual {v3, v7, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0, v3}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    :cond_2
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    iget-object v4, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda17;

    const/4 v5, 0x1

    invoke-direct {v3, v5, p0, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda17;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v3, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda2;

    invoke-direct {v3, v4, p0, v2}, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda2;-><init>(Landroid/media/MediaPlayer;Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;I)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;

    invoke-direct {v2, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->prepareStartFuture:Ljava/util/concurrent/CompletableFuture;

    const-string/jumbo p0, "prepareStartFuture"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    new-instance p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v3, p0}, Ljava/util/concurrent/CompletableFuture;->thenRunAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    return-object v1

    :pswitch_1
    check-cast p0, Landroidx/work/impl/utils/WorkProgressUpdater;

    check-cast v4, Ljava/util/UUID;

    check-cast v3, Landroidx/work/Data;

    const-string v0, "Ignoring setProgressAsync(...). WorkSpec ("

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v5

    sget-object v6, Landroidx/work/impl/utils/WorkProgressUpdater;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Updating progress for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/utils/WorkProgressUpdater;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    sget-object v5, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    if-ne v4, v5, :cond_4

    new-instance v0, Landroidx/work/impl/model/WorkProgress;

    invoke-direct {v0, v1, v3}, Landroidx/work/impl/model/WorkProgress;-><init>(Ljava/lang/String;Landroidx/work/Data;)V

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->workProgressDao()Landroidx/transition/TransitionValuesMaps;

    move-result-object v1

    iget-object v3, v1, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast v3, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, v1, Landroidx/transition/TransitionValuesMaps;->mNameValues:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    invoke-virtual {v1, v0}, Landroidx/work/impl/model/WorkTagDao_Impl$1;->insert(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_4
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") is not in a RUNNING state."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Landroidx/work/Logger$LogcatLogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    return-object v2

    :cond_5
    :try_start_3
    const-string v0, "Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    :try_start_4
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v1

    const-string v2, "Error updating Worker progress"

    invoke-virtual {v1, v6, v2, v0}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
