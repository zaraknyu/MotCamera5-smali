.class public final Landroidx/lifecycle/DefaultLifecycleObserverAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic $r8$classId:I

.field public final defaultLifecycleObserver:Ljava/lang/Object;

.field public final lifecycleEventObserver:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->$r8$classId:I

    iput-object p2, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->defaultLifecycleObserver:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->lifecycleEventObserver:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleEventObserver;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->$r8$classId:I

    const-string v0, "defaultLifecycleObserver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->defaultLifecycleObserver:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->lifecycleEventObserver:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LifecycleObserver;)V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->$r8$classId:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->defaultLifecycleObserver:Ljava/lang/Object;

    .line 7
    sget-object v0, Landroidx/lifecycle/ClassesInfoCache;->sInstance:Landroidx/lifecycle/ClassesInfoCache;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 8
    iget-object v1, v0, Landroidx/lifecycle/ClassesInfoCache;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/ClassesInfoCache;->createInfo(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    move-result-object v1

    .line 10
    :goto_0
    iput-object v1, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->lifecycleEventObserver:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;Landroidx/viewpager2/adapter/FragmentViewHolder;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->$r8$classId:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->lifecycleEventObserver:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->defaultLifecycleObserver:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 3

    iget v0, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->$r8$classId:I

    iget-object v1, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->lifecycleEventObserver:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->defaultLifecycleObserver:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_0

    check-cast v2, Landroid/os/Handler;

    check-cast v1, Landroidx/lifecycle/LiveData$1;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void

    :pswitch_0
    check-cast v2, Landroidx/viewpager2/adapter/FragmentViewHolder;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;

    iget-object p2, v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object p0, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p0, Landroid/widget/FrameLayout;

    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->placeFragmentInViewHolder(Landroidx/viewpager2/adapter/FragmentViewHolder;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_1
    check-cast v1, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    iget-object p0, v1, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;->mEventToHandlers:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1, p2, v2}, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;->invokeMethodsForEvent(Ljava/util/List;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_ANY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0, p1, p2, v2}, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;->invokeMethodsForEvent(Ljava/util/List;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V

    return-void

    :pswitch_2
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_3

    check-cast v2, Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v2, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    check-cast v1, Landroidx/savedstate/SavedStateRegistry;

    invoke-virtual {v1}, Landroidx/savedstate/SavedStateRegistry;->runOnNextRecreation()V

    :cond_3
    return-void

    :pswitch_3
    check-cast v2, Landroidx/lifecycle/DefaultLifecycleObserver;

    sget-object p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    packed-switch p0, :pswitch_data_1

    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :pswitch_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ON_ANY must not been send by anybody"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :pswitch_6
    invoke-interface {v2, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onStop(Landroidx/lifecycle/LifecycleOwner;)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :pswitch_8
    invoke-interface {v2, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onResume(Landroidx/lifecycle/LifecycleOwner;)V

    goto :goto_1

    :pswitch_9
    invoke-interface {v2, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onStart(Landroidx/lifecycle/LifecycleOwner;)V

    goto :goto_1

    :pswitch_a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    check-cast v1, Landroidx/lifecycle/LifecycleEventObserver;

    if-eqz v1, :cond_4

    invoke-interface {v1, p1, p2}, Landroidx/lifecycle/LifecycleEventObserver;->onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
