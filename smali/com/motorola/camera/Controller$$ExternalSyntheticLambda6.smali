.class public final synthetic Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p1, Landroidx/window/layout/WindowLayoutInfo;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/Controller;

    check-cast p1, Landroidx/window/layout/WindowLayoutInfo;

    if-eqz p1, :cond_4

    iget-object p1, p1, Landroidx/window/layout/WindowLayoutInfo;->displayFeatures:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/window/layout/HardwareFoldingFeature;

    if-eqz v2, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mWindowLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v2, v1, Landroidx/window/layout/HardwareFoldingFeature;->state:Landroidx/window/layout/FoldingFeature$State;

    sget-object v3, Landroidx/window/layout/FoldingFeature$State;->HALF_OPENED:Landroidx/window/layout/FoldingFeature$State;

    if-ne v2, v3, :cond_2

    const/16 v1, 0x86

    invoke-virtual {p0, v1}, Lcom/motorola/camera/Controller;->hingeAngleChanged(I)V

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->FOLDING_STATE_CHANGE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    iget-object v1, v1, Landroidx/window/layout/HardwareFoldingFeature;->state:Landroidx/window/layout/FoldingFeature$State;

    sget-object v2, Landroidx/window/layout/FoldingFeature$State;->FLAT:Landroidx/window/layout/FoldingFeature$State;

    if-ne v1, v2, :cond_3

    const/16 v1, 0xb4

    invoke-virtual {p0, v1}, Lcom/motorola/camera/Controller;->hingeAngleChanged(I)V

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->FOLDING_STATE_CHANGE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    monitor-exit p1

    goto :goto_3

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
