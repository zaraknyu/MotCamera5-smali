.class public abstract Landroidx/lifecycle/LifecycleKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_ARGS_KEY:Lcom/google/mlkit/common/internal/zzc;

.field public static final SAVED_STATE_REGISTRY_OWNER_KEY:Landroidx/collection/internal/Lock;

.field public static final VIEW_MODEL_KEY:Landroidx/transition/Transition$1;

.field public static final VIEW_MODEL_STORE_OWNER_KEY:Lcom/google/mlkit/common/internal/zzb;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/collection/internal/Lock;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/collection/internal/Lock;-><init>(I)V

    sput-object v0, Landroidx/lifecycle/LifecycleKt;->SAVED_STATE_REGISTRY_OWNER_KEY:Landroidx/collection/internal/Lock;

    new-instance v0, Lcom/google/mlkit/common/internal/zzb;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/LifecycleKt;->VIEW_MODEL_STORE_OWNER_KEY:Lcom/google/mlkit/common/internal/zzb;

    new-instance v0, Lcom/google/mlkit/common/internal/zzc;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/google/mlkit/common/internal/zzc;-><init>(I)V

    sput-object v0, Landroidx/lifecycle/LifecycleKt;->DEFAULT_ARGS_KEY:Lcom/google/mlkit/common/internal/zzc;

    new-instance v0, Landroidx/transition/Transition$1;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/transition/Transition$1;-><init>(I)V

    sput-object v0, Landroidx/lifecycle/LifecycleKt;->VIEW_MODEL_KEY:Landroidx/transition/Transition$1;

    return-void
.end method

.method public static final attachHandleIfNeeded(Landroidx/lifecycle/ViewModel;Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;)V
    .locals 2

    const-string/jumbo v0, "registry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    iget-object p0, p0, Landroidx/lifecycle/ViewModel;->impl:Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;

    if-eqz p0, :cond_0

    iget-object v1, p0, Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;->lock:Landroidx/lifecycle/viewmodel/internal/SynchronizedObject;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;->keyToCloseables:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/AutoCloseable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    check-cast p0, Landroidx/lifecycle/SavedStateHandleController;

    if-eqz p0, :cond_3

    iget-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->isAttached:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/SavedStateHandleController;->attachToLifecycle(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;)V

    move-object p0, p2

    check-cast p0, Landroidx/lifecycle/LifecycleRegistry;

    iget-object p0, p0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    if-eq p0, v0, :cond_2

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-ltz p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p1}, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void

    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroidx/savedstate/SavedStateRegistry;->runOnNextRecreation()V

    :cond_3
    return-void
.end method

.method public static createHandle(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandle;
    .locals 3

    if-nez p0, :cond_0

    move-object p0, p1

    :cond_0
    if-nez p0, :cond_1

    new-instance p0, Landroidx/lifecycle/SavedStateHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance p1, Lcom/motorola/camera/AppFeatures;

    sget-object v0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    invoke-direct {p1, v0}, Lcom/motorola/camera/AppFeatures;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandle;->impl:Lcom/motorola/camera/AppFeatures;

    return-object p0

    :cond_1
    const-class p1, Landroidx/lifecycle/SavedStateHandle;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {p0}, Landroid/os/BaseBundle;->size()I

    move-result p1

    new-instance v0, Lkotlin/collections/builders/MapBuilder;

    invoke-direct {v0, p1}, Lkotlin/collections/builders/MapBuilder;-><init>(I)V

    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lkotlin/collections/builders/MapBuilder;->build()Lkotlin/collections/builders/MapBuilder;

    move-result-object p0

    new-instance p1, Landroidx/lifecycle/SavedStateHandle;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v0, Lcom/motorola/camera/AppFeatures;

    invoke-direct {v0, p0}, Lcom/motorola/camera/AppFeatures;-><init>(Ljava/util/Map;)V

    iput-object v0, p1, Landroidx/lifecycle/SavedStateHandle;->impl:Lcom/motorola/camera/AppFeatures;

    return-object p1
.end method

.method public static final createSavedStateHandle(Landroidx/lifecycle/viewmodel/MutableCreationExtras;)Landroidx/lifecycle/SavedStateHandle;
    .locals 7

    iget-object p0, p0, Landroidx/lifecycle/viewmodel/CreationExtras;->extras:Ljava/util/LinkedHashMap;

    sget-object v0, Landroidx/lifecycle/LifecycleKt;->SAVED_STATE_REGISTRY_OWNER_KEY:Landroidx/collection/internal/Lock;

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/savedstate/SavedStateRegistryOwner;

    if-eqz v0, :cond_9

    sget-object v1, Landroidx/lifecycle/LifecycleKt;->VIEW_MODEL_STORE_OWNER_KEY:Lcom/google/mlkit/common/internal/zzb;

    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v1, :cond_8

    sget-object v2, Landroidx/lifecycle/LifecycleKt;->DEFAULT_ARGS_KEY:Lcom/google/mlkit/common/internal/zzc;

    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    sget-object v3, Landroidx/lifecycle/LifecycleKt;->VIEW_MODEL_KEY:Landroidx/transition/Transition$1;

    invoke-virtual {p0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_7

    invoke-interface {v0}, Landroidx/savedstate/SavedStateRegistryOwner;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/savedstate/SavedStateRegistry;->getSavedStateProvider()Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    move-result-object v0

    instance-of v3, v0, Landroidx/lifecycle/SavedStateHandlesProvider;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v0, Landroidx/lifecycle/SavedStateHandlesProvider;

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_6

    invoke-static {v1}, Landroidx/lifecycle/LifecycleKt;->getSavedStateHandlesVM(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/SavedStateHandlesVM;

    move-result-object v1

    iget-object v1, v1, Landroidx/lifecycle/SavedStateHandlesVM;->handles:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/SavedStateHandle;

    if-nez v3, :cond_5

    invoke-virtual {v0}, Landroidx/lifecycle/SavedStateHandlesProvider;->performRestore()V

    iget-object v3, v0, Landroidx/lifecycle/SavedStateHandlesProvider;->restoredState:Landroid/os/Bundle;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_3

    const/4 v5, 0x0

    new-array v6, v5, [Lkotlin/Pair;

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lkotlin/Pair;

    invoke-static {v5}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v5

    :cond_3
    invoke-virtual {v3, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iput-object v4, v0, Landroidx/lifecycle/SavedStateHandlesProvider;->restoredState:Landroid/os/Bundle;

    :cond_4
    move-object v4, v5

    :goto_1
    invoke-static {v4, v2}, Landroidx/lifecycle/LifecycleKt;->createHandle(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_5
    return-object v3

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "enableSavedStateHandles() wasn\'t called prior to createSavedStateHandle() call"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final enableSavedStateHandles(Landroidx/savedstate/SavedStateRegistryOwner;)V
    .locals 3

    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleRegistry;

    iget-object v0, v0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Landroidx/savedstate/SavedStateRegistryOwner;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/savedstate/SavedStateRegistry;->getSavedStateProvider()Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Landroidx/lifecycle/SavedStateHandlesProvider;

    invoke-interface {p0}, Landroidx/savedstate/SavedStateRegistryOwner;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/SavedStateHandlesProvider;-><init>(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/ViewModelStoreOwner;)V

    invoke-interface {p0}, Landroidx/savedstate/SavedStateRegistryOwner;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v1

    const-string v2, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {v1, v2, v0}, Landroidx/savedstate/SavedStateRegistry;->registerSavedStateProvider(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V

    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    new-instance v1, Landroidx/savedstate/Recreator;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Landroidx/savedstate/Recreator;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_2
    return-void
.end method

.method public static final get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const v1, 0x7f0a0514

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_1

    return-object v1

    .line 4
    :cond_1
    invoke-static {p0}, Landroidx/core/viewtree/ViewTree;->getParentOrViewTreeDisjointParent(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object p0

    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_2

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object p0, v0

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static final get(Landroid/view/View;)Landroidx/lifecycle/ViewModelStoreOwner;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const v1, 0x7f0a0517

    .line 1
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/lifecycle/ViewModelStoreOwner;

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_1

    return-object v1

    .line 2
    :cond_1
    invoke-static {p0}, Landroidx/core/viewtree/ViewTree;->getParentOrViewTreeDisjointParent(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object p0

    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_2

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object p0, v0

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static final getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/Lifecycle;->internalScopeRef:Lcom/google/android/gms/tasks/zza;

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    invoke-static {}, Lkotlinx/coroutines/JobKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    move-result-object v2

    sget-object v3, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v3, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    iget-object v4, v3, Lkotlinx/coroutines/android/HandlerContext;->immediate:Lkotlinx/coroutines/android/HandlerContext;

    invoke-static {v2, v4}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlin/coroutines/CoroutineContext;)V

    iget-object v2, v0, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, v3, Lkotlinx/coroutines/android/HandlerContext;->immediate:Lkotlinx/coroutines/android/HandlerContext;

    new-instance v0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl$register$1;

    invoke-direct {v0, v1, v4}, Landroidx/lifecycle/LifecycleCoroutineScopeImpl$register$1;-><init>(Landroidx/lifecycle/LifecycleCoroutineScopeImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x2

    invoke-static {v1, p0, v4, v0, v2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-object v1
.end method

.method public static final getSavedStateHandlesVM(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/SavedStateHandlesVM;
    .locals 3

    new-instance v0, Landroidx/lifecycle/SavedStateHandleSupport$savedStateHandlesVM$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    instance-of v1, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v1}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    :goto_0
    const-string v2, "extras"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object p0

    const-string/jumbo v2, "store"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-direct {v2, p0, v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    const-class p0, Landroidx/lifecycle/SavedStateHandlesVM;

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    const-string v0, "androidx.lifecycle.internal.SavedStateHandlesVM"

    invoke-virtual {v2, v0, p0}, Landroidx/media3/extractor/text/pgs/PgsParser;->getViewModel$lifecycle_viewmodel_release(Ljava/lang/String;Lkotlin/reflect/KClass;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/SavedStateHandlesVM;

    return-object p0
.end method

.method public static final map(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/MediatorLiveData;
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    sget-object v1, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    new-instance v0, Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MediatorLiveData;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    :goto_0
    new-instance v1, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, p1}, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p1, v1, v2}, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v0, p0, p1}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/MutableLiveData;Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;)V

    return-object v0
.end method

.method public static final repeatOnLifecycle(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleRegistry;

    iget-object v0, v0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p2}, Lkotlinx/coroutines/JobKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0a0514

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static final set(Landroid/view/View;Landroidx/lifecycle/ViewModelStoreOwner;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0a0517

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
