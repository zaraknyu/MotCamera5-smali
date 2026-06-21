.class public final Landroidx/activity/OnBackPressedDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public backInvokedCallbackRegistered:Z

.field public final fallbackOnBackPressed:Ljava/lang/Runnable;

.field public hasEnabledCallbacks:Z

.field public inProgressCallback:Landroidx/fragment/app/FragmentManager$1;

.field public invokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

.field public final onBackInvokedCallback:Landroidx/activity/OnBackPressedDispatcher$Api34Impl$createOnBackAnimationCallback$1;

.field public final onBackPressedCallbacks:Lkotlin/collections/ArrayDeque;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->fallbackOnBackPressed:Ljava/lang/Runnable;

    new-instance p1, Lkotlin/collections/ArrayDeque;

    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->onBackPressedCallbacks:Lkotlin/collections/ArrayDeque;

    new-instance p1, Landroidx/activity/OnBackPressedDispatcher$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroidx/activity/OnBackPressedDispatcher$1;-><init>(Landroidx/activity/OnBackPressedDispatcher;I)V

    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/activity/OnBackPressedDispatcher$1;-><init>(Landroidx/activity/OnBackPressedDispatcher;I)V

    new-instance v1, Landroidx/activity/OnBackPressedDispatcher$3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/activity/OnBackPressedDispatcher$3;-><init>(Landroidx/activity/OnBackPressedDispatcher;I)V

    new-instance v2, Landroidx/activity/OnBackPressedDispatcher$3;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Landroidx/activity/OnBackPressedDispatcher$3;-><init>(Landroidx/activity/OnBackPressedDispatcher;I)V

    new-instance v3, Landroidx/activity/OnBackPressedDispatcher$Api34Impl$createOnBackAnimationCallback$1;

    invoke-direct {v3, p1, v0, v1, v2}, Landroidx/activity/OnBackPressedDispatcher$Api34Impl$createOnBackAnimationCallback$1;-><init>(Landroidx/activity/OnBackPressedDispatcher$1;Landroidx/activity/OnBackPressedDispatcher$1;Landroidx/activity/OnBackPressedDispatcher$3;Landroidx/activity/OnBackPressedDispatcher$3;)V

    iput-object v3, p0, Landroidx/activity/OnBackPressedDispatcher;->onBackInvokedCallback:Landroidx/activity/OnBackPressedDispatcher$Api34Impl$createOnBackAnimationCallback$1;

    return-void
.end method


# virtual methods
.method public final addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentManager$1;)V
    .locals 10

    const-string v0, "onBackPressedCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroidx/lifecycle/LifecycleRegistry;

    iget-object v0, v0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    invoke-direct {v0, p0, p1, p2}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager$1;)V

    iget-object p1, p2, Landroidx/fragment/app/FragmentManager$1;->cancellables:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->updateEnabledCallbacks()V

    new-instance v1, Landroidx/room/RoomDatabase$closeBarrier$1;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    const-class v4, Landroidx/activity/OnBackPressedDispatcher;

    const-string/jumbo v5, "updateEnabledCallbacks"

    const-string/jumbo v6, "updateEnabledCallbacks()V"

    const/4 v7, 0x0

    move-object v3, p0

    invoke-direct/range {v1 .. v9}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    iput-object v1, p2, Landroidx/fragment/app/FragmentManager$1;->enabledChangedCallback:Lkotlin/jvm/internal/FunctionReferenceImpl;

    return-void
.end method

.method public final onBackCancelled()V
    .locals 4

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->inProgressCallback:Landroidx/fragment/app/FragmentManager$1;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->onBackPressedCallbacks:Lkotlin/collections/ArrayDeque;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/fragment/app/FragmentManager$1;

    iget-boolean v3, v3, Landroidx/fragment/app/FragmentManager$1;->isEnabled:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    check-cast v2, Landroidx/fragment/app/FragmentManager$1;

    :cond_2
    iput-object v1, p0, Landroidx/activity/OnBackPressedDispatcher;->inProgressCallback:Landroidx/fragment/app/FragmentManager$1;

    return-void
.end method

.method public final onBackPressed()V
    .locals 4

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->inProgressCallback:Landroidx/fragment/app/FragmentManager$1;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->onBackPressedCallbacks:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/fragment/app/FragmentManager$1;

    iget-boolean v3, v3, Landroidx/fragment/app/FragmentManager$1;->isEnabled:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    move-object v0, v2

    check-cast v0, Landroidx/fragment/app/FragmentManager$1;

    :cond_2
    iput-object v1, p0, Landroidx/activity/OnBackPressedDispatcher;->inProgressCallback:Landroidx/fragment/app/FragmentManager$1;

    if-eqz v0, :cond_4

    iget p0, v0, Landroidx/fragment/app/FragmentManager$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    iget-object p0, v0, Landroidx/fragment/app/FragmentManager$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/window/DialogWrapper$2;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/window/DialogWrapper$2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    iget-object p0, v0, Landroidx/fragment/app/FragmentManager$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/FragmentManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    iget-boolean v0, v0, Landroidx/fragment/app/FragmentManager$1;->isEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_1

    :cond_3
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    :goto_1
    return-void

    :cond_4
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher;->fallbackOnBackPressed:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final updateBackInvokedCallbackState(Z)V
    .locals 4

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->invokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/activity/OnBackPressedDispatcher;->onBackInvokedCallback:Landroidx/activity/OnBackPressedDispatcher$Api34Impl$createOnBackAnimationCallback$1;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-boolean v3, p0, Landroidx/activity/OnBackPressedDispatcher;->backInvokedCallbackRegistered:Z

    if-nez v3, :cond_0

    invoke-interface {v0, v2, v1}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/activity/OnBackPressedDispatcher;->backInvokedCallbackRegistered:Z

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/activity/OnBackPressedDispatcher;->backInvokedCallbackRegistered:Z

    if-eqz p1, :cond_1

    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    iput-boolean v2, p0, Landroidx/activity/OnBackPressedDispatcher;->backInvokedCallbackRegistered:Z

    :cond_1
    return-void
.end method

.method public final updateEnabledCallbacks()V
    .locals 4

    iget-boolean v0, p0, Landroidx/activity/OnBackPressedDispatcher;->hasEnabledCallbacks:Z

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/activity/OnBackPressedDispatcher;->onBackPressedCallbacks:Lkotlin/collections/ArrayDeque;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentManager$1;

    iget-boolean v3, v3, Landroidx/fragment/app/FragmentManager$1;->isEnabled:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    iput-boolean v1, p0, Landroidx/activity/OnBackPressedDispatcher;->hasEnabledCallbacks:Z

    if-eq v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->updateBackInvokedCallbackState(Z)V

    :cond_3
    return-void
.end method
