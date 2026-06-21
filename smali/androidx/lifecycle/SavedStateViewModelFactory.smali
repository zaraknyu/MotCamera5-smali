.class public final Landroidx/lifecycle/SavedStateViewModelFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field public final application:Landroid/app/Application;

.field public final defaultArgs:Landroid/os/Bundle;

.field public final factory:Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

.field public final lifecycle:Landroidx/lifecycle/Lifecycle;

.field public final savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Landroidx/savedstate/SavedStateRegistryOwner;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    invoke-interface {p2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iput-object p2, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->lifecycle:Landroidx/lifecycle/Lifecycle;

    iput-object p3, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->defaultArgs:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->application:Landroid/app/Application;

    if-eqz p1, :cond_1

    sget-object p2, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->_instance:Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    if-nez p2, :cond_0

    new-instance p2, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-direct {p2, p1}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    sput-object p2, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->_instance:Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    :cond_0
    sget-object p1, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->_instance:Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->factory:Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/SavedStateViewModelFactory;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    return-object p0

    .line 79
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 80
    const-string p1, "Local and anonymous classes can not be ViewModels"

    .line 81
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/MutableCreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 3

    .line 2
    sget-object v0, Landroidx/lifecycle/LifecycleKt;->VIEW_MODEL_KEY:Landroidx/transition/Transition$1;

    .line 3
    iget-object v1, p2, Landroidx/lifecycle/viewmodel/CreationExtras;->extras:Ljava/util/LinkedHashMap;

    .line 4
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 6
    sget-object v2, Landroidx/lifecycle/LifecycleKt;->SAVED_STATE_REGISTRY_OWNER_KEY:Landroidx/collection/internal/Lock;

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 8
    sget-object v2, Landroidx/lifecycle/LifecycleKt;->VIEW_MODEL_STORE_OWNER_KEY:Lcom/google/mlkit/common/internal/zzb;

    .line 9
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 10
    sget-object v0, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->APPLICATION_KEY:Lokio/Timeout;

    .line 11
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Landroid/app/Application;

    .line 13
    const-class v1, Landroidx/lifecycle/AndroidViewModel;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 14
    sget-object v2, Landroidx/lifecycle/SavedStateViewModelFactory_androidKt;->ANDROID_VIEWMODEL_SIGNATURE:Ljava/util/List;

    .line 15
    invoke-static {p1, v2}, Landroidx/lifecycle/SavedStateViewModelFactory_androidKt;->findMatchingConstructor(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    goto :goto_0

    .line 16
    :cond_0
    sget-object v2, Landroidx/lifecycle/SavedStateViewModelFactory_androidKt;->VIEWMODEL_SIGNATURE:Ljava/util/List;

    .line 17
    invoke-static {p1, v2}, Landroidx/lifecycle/SavedStateViewModelFactory_androidKt;->findMatchingConstructor(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    .line 18
    iget-object p0, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->factory:Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/MutableCreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 19
    invoke-static {p2}, Landroidx/lifecycle/LifecycleKt;->createSavedStateHandle(Landroidx/lifecycle/viewmodel/MutableCreationExtras;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 20
    invoke-static {p1, v2, p0}, Landroidx/lifecycle/SavedStateViewModelFactory_androidKt;->newInstance(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    return-object p0

    .line 21
    :cond_2
    invoke-static {p2}, Landroidx/lifecycle/LifecycleKt;->createSavedStateHandle(Landroidx/lifecycle/viewmodel/MutableCreationExtras;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v2, p0}, Landroidx/lifecycle/SavedStateViewModelFactory_androidKt;->newInstance(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    return-object p0

    .line 22
    :cond_3
    iget-object p2, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->lifecycle:Landroidx/lifecycle/Lifecycle;

    if-eqz p2, :cond_4

    .line 23
    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/SavedStateViewModelFactory;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    return-object p0

    .line 24
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 25
    const-string p1, "SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel."

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 28
    const-string p1, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 7

    .line 30
    iget-object v0, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->lifecycle:Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_9

    .line 31
    const-class v1, Landroidx/lifecycle/AndroidViewModel;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    iget-object v2, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->application:Landroid/app/Application;

    if-eqz v2, :cond_0

    .line 33
    sget-object v2, Landroidx/lifecycle/SavedStateViewModelFactory_androidKt;->ANDROID_VIEWMODEL_SIGNATURE:Ljava/util/List;

    .line 34
    invoke-static {p2, v2}, Landroidx/lifecycle/SavedStateViewModelFactory_androidKt;->findMatchingConstructor(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    goto :goto_0

    .line 35
    :cond_0
    sget-object v2, Landroidx/lifecycle/SavedStateViewModelFactory_androidKt;->VIEWMODEL_SIGNATURE:Ljava/util/List;

    .line 36
    invoke-static {p2, v2}, Landroidx/lifecycle/SavedStateViewModelFactory_androidKt;->findMatchingConstructor(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_3

    .line 37
    iget-object p1, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->application:Landroid/app/Application;

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->factory:Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-virtual {p0, p2}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    return-object p0

    .line 38
    :cond_1
    sget-object p0, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;->_instance:Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    if-nez p0, :cond_2

    .line 39
    new-instance p0, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sput-object p0, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;->_instance:Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    .line 42
    :cond_2
    sget-object p0, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;->_instance:Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    .line 43
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 44
    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsj;->createViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    return-object p0

    .line 45
    :cond_3
    iget-object v3, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 46
    iget-object v4, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->defaultArgs:Landroid/os/Bundle;

    .line 47
    invoke-virtual {v3, p1}, Landroidx/savedstate/SavedStateRegistry;->consumeRestoredStateForKey(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 48
    invoke-static {v5, v4}, Landroidx/lifecycle/LifecycleKt;->createHandle(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v4

    .line 49
    new-instance v5, Landroidx/lifecycle/SavedStateHandleController;

    invoke-direct {v5, p1, v4}, Landroidx/lifecycle/SavedStateHandleController;-><init>(Ljava/lang/String;Landroidx/lifecycle/SavedStateHandle;)V

    .line 50
    invoke-virtual {v5, v3, v0}, Landroidx/lifecycle/SavedStateHandleController;->attachToLifecycle(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;)V

    .line 51
    move-object p1, v0

    check-cast p1, Landroidx/lifecycle/LifecycleRegistry;

    .line 52
    iget-object p1, p1, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 53
    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    if-eq p1, v6, :cond_5

    .line 54
    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 55
    invoke-virtual {p1, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_4

    goto :goto_1

    .line 56
    :cond_4
    new-instance p1, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;

    const/4 v6, 0x1

    invoke-direct {p1, v6, v0, v3}, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 57
    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_2

    .line 58
    :cond_5
    :goto_1
    invoke-virtual {v3}, Landroidx/savedstate/SavedStateRegistry;->runOnNextRecreation()V

    :goto_2
    if-eqz v1, :cond_6

    .line 59
    iget-object p0, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->application:Landroid/app/Application;

    if-eqz p0, :cond_6

    .line 60
    filled-new-array {p0, v4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, v2, p0}, Landroidx/lifecycle/SavedStateViewModelFactory_androidKt;->newInstance(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    goto :goto_3

    .line 61
    :cond_6
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, v2, p0}, Landroidx/lifecycle/SavedStateViewModelFactory_androidKt;->newInstance(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    .line 62
    :goto_3
    const-string p1, "androidx.lifecycle.savedstate.vm.tag"

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    iget-object p2, p0, Landroidx/lifecycle/ViewModel;->impl:Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;

    if-eqz p2, :cond_8

    .line 65
    iget-boolean v0, p2, Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;->isCleared:Z

    if-eqz v0, :cond_7

    .line 66
    invoke-static {v5}, Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;->closeWithRuntimeException(Ljava/lang/AutoCloseable;)V

    return-object p0

    .line 67
    :cond_7
    iget-object v0, p2, Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;->lock:Landroidx/lifecycle/viewmodel/internal/SynchronizedObject;

    .line 68
    monitor-enter v0

    .line 69
    :try_start_0
    iget-object p2, p2, Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;->keyToCloseables:Ljava/util/LinkedHashMap;

    .line 70
    invoke-interface {p2, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/AutoCloseable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit v0

    .line 72
    invoke-static {p1}, Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;->closeWithRuntimeException(Ljava/lang/AutoCloseable;)V

    return-object p0

    :catchall_0
    move-exception p0

    .line 73
    monitor-exit v0

    throw p0

    :cond_8
    return-object p0

    .line 74
    :cond_9
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 75
    const-string p1, "SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    .line 76
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final create(Lkotlin/reflect/KClass;Landroidx/lifecycle/viewmodel/MutableCreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 1

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/SavedStateViewModelFactory;->create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/MutableCreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    return-object p0
.end method
