.class public final Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/saving/SaveListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMediaSaveComplete(Lcom/motorola/camera/storage/MediaFile;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "mediaFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->expectedSlowMotionFileName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/backend/MediaStoreFile;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/motorola/camera/storage/backend/MediaStoreFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/backend/MediaStoreFile;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionFile:Lcom/motorola/camera/storage/backend/MediaStoreFile;

    :cond_1
    return-void

    :pswitch_0
    const-string p0, "mediaFile"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSaveComplete(Lcom/motorola/camera/CameraData;)V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;->$r8$classId:I

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->expectedSlowMotionFileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionData:Lcom/motorola/camera/CameraData;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->trySlowMotionReady(I)V

    :cond_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;

    iget-object v0, p1, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    if-eqz v0, :cond_1

    const-string v2, "IS_PRIMARY"

    invoke-virtual {v0, v2, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->expectedSeqIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->cameraData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->cameraData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->expectedShots:I

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->cameraData:Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Landroidx/viewpager/widget/ViewPager$1;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->stopListening$1()V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->isFlashing:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->savingLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iput-boolean v1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->isFlashing:Z

    :cond_4
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1$onSaveComplete$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1$onSaveComplete$1;-><init>(Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object p0

    new-instance p1, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;

    const/16 v0, 0x1a

    invoke-direct {p1, v0}, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSaveError(Lcom/motorola/camera/CameraData;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->expectedSlowMotionFileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string p1, "SuperSlowMotionComponent"

    const-string v0, "onSaveError"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionError:Z

    :cond_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->expectedSeqIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object p1

    if-eqz p1, :cond_1

    iget p1, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->stopListening$1()V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->savingLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->COLLAGE_FINISHED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
