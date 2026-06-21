.class public abstract Landroidx/databinding/ViewDataBinding;
.super Landroidx/databinding/BaseObservable;
.source "SourceFile"


# static fields
.field public static final CREATE_LIVE_DATA_LISTENER:Lokio/Timeout;

.field public static final ROOT_REATTACHED_LISTENER:Landroidx/databinding/ViewDataBinding$6;

.field public static final USE_CHOREOGRAPHER:Z = true

.field public static final sReferenceQueue:Ljava/lang/ref/ReferenceQueue;


# instance fields
.field public final mChoreographer:Landroid/view/Choreographer;

.field public final mFrameCallback:Landroidx/databinding/ViewDataBinding$8;

.field public mInLiveDataRegisterObserver:Z

.field public mIsExecutingPendingBindings:Z

.field public mLifecycleOwner:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

.field public final mLocalFieldObservers:[Landroidx/databinding/WeakListener;

.field public mOnStartListener:Landroidx/databinding/ViewDataBinding$OnStartListener;

.field public mPendingRebind:Z

.field public final mRebindRunnable:Landroidx/lifecycle/LiveData$1;

.field public final mRoot:Landroid/view/View;

.field public final mUIThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokio/Timeout;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lokio/Timeout;-><init>(I)V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->CREATE_LIVE_DATA_LISTENER:Lokio/Timeout;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Landroidx/databinding/ViewDataBinding$6;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$6;-><init>(I)V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->ROOT_REATTACHED_LISTENER:Landroidx/databinding/ViewDataBinding$6;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/lifecycle/LiveData$1;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroidx/lifecycle/LiveData$1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindRunnable:Landroidx/lifecycle/LiveData$1;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mPendingRebind:Z

    new-array p2, p2, [Landroidx/databinding/WeakListener;

    iput-object p2, p0, Landroidx/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroidx/databinding/WeakListener;

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-boolean p1, Landroidx/databinding/ViewDataBinding;->USE_CHOREOGRAPHER:Z

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->mChoreographer:Landroid/view/Choreographer;

    new-instance p1, Landroidx/databinding/ViewDataBinding$8;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Landroidx/databinding/ViewDataBinding$8;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->mFrameCallback:Landroidx/databinding/ViewDataBinding$8;

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->mFrameCallback:Landroidx/databinding/ViewDataBinding$8;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->mUIThreadHandler:Landroid/os/Handler;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "DataBinding must be created in view\'s UI Thread"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static inflateInternal(ILandroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/databinding/ViewDataBinding;
    .locals 2

    sget-object v0, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Landroidx/databinding/MergedDataBinderMapper;->getDataBinder(Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static mapBindings(Landroid/view/View;[Ljava/lang/Object;Landroid/util/SparseIntArray;Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const v1, 0x7f0a0126

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/databinding/ViewDataBinding;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    goto/16 :goto_7

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    :cond_2
    const/4 v1, 0x0

    if-eqz p3, :cond_7

    if-eqz v0, :cond_7

    const-string p3, "layout"

    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_7

    const/16 p3, 0x5f

    invoke-virtual {v0, p3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p3

    if-lez p3, :cond_9

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, p3, :cond_3

    goto :goto_4

    :cond_3
    move v3, p3

    :goto_1
    if-ge v3, v2, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    move v3, v1

    :goto_2
    if-ge p3, v2, :cond_6

    mul-int/lit8 v3, v3, 0xa

    invoke-virtual {v0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v3, v4

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_6
    aget-object p3, p1, v3

    if-nez p3, :cond_a

    aput-object p0, p1, v3

    goto :goto_5

    :cond_7
    if-eqz v0, :cond_9

    const-string p3, "binding_"

    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p3

    const/16 v2, 0x8

    move v3, v1

    :goto_3
    if-ge v2, p3, :cond_8

    mul-int/lit8 v3, v3, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    aget-object p3, p1, v3

    if-nez p3, :cond_a

    aput-object p0, p1, v3

    goto :goto_5

    :cond_9
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p3

    if-lez p3, :cond_a

    if-eqz p2, :cond_a

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p3

    if-ltz p3, :cond_a

    aget-object v0, p1, p3

    if-nez v0, :cond_a

    aput-object p0, p1, p3

    :cond_a
    :goto_5
    instance-of p3, p0, Landroid/view/ViewGroup;

    if-eqz p3, :cond_b

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    move v0, v1

    :goto_6
    if-ge v0, p3, :cond_b

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1, p2, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroid/view/View;[Ljava/lang/Object;Landroid/util/SparseIntArray;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_b
    :goto_7
    return-void
.end method

.method public static safeUnbox(Ljava/lang/Integer;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static safeUnbox(Ljava/lang/Boolean;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract executeBindings()V
.end method

.method public abstract hasPendingBindings()Z
.end method

.method public abstract onFieldChange(IILjava/lang/Object;)Z
.end method

.method public final registerTo(ILandroidx/lifecycle/MutableLiveData;Lokio/Timeout;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroidx/databinding/WeakListener;

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Landroidx/databinding/ViewDataBinding$LiveDataListener;

    sget-object v1, Landroidx/databinding/ViewDataBinding;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p3, p0, p1, v1}, Landroidx/databinding/ViewDataBinding$LiveDataListener;-><init>(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)V

    iget-object v1, p3, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mListener:Landroidx/databinding/WeakListener;

    aput-object v1, v0, p1

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mLifecycleOwner:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    if-eqz p0, :cond_1

    iget-object p1, v1, Landroidx/databinding/WeakListener;->mObservable:Landroidx/databinding/ViewDataBinding$LiveDataListener;

    invoke-virtual {p1, p0}, Landroidx/databinding/ViewDataBinding$LiveDataListener;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_1
    invoke-virtual {v1}, Landroidx/databinding/WeakListener;->unregister()Z

    iput-object p2, v1, Landroidx/databinding/WeakListener;->mTarget:Ljava/lang/Object;

    iget-object p0, v1, Landroidx/databinding/WeakListener;->mObservable:Landroidx/databinding/ViewDataBinding$LiveDataListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Landroidx/lifecycle/LiveData;

    iget-object p1, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mLifecycleOwnerRef:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p2, p1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_3
    return-void
.end method

.method public final requestRebind()V
    .locals 2

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mLifecycleOwner:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/activity/ComponentActivity;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    iget-object v0, v0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mPendingRebind:Z

    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mPendingRebind:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Landroidx/databinding/ViewDataBinding;->USE_CHOREOGRAPHER:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mFrameCallback:Landroidx/databinding/ViewDataBinding$8;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void

    :cond_3
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mUIThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mRebindRunnable:Landroidx/lifecycle/LiveData$1;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final updateLiveDataRegistration(ILandroidx/lifecycle/MutableLiveData;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mInLiveDataRegisterObserver:Z

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroidx/databinding/ViewDataBinding;->CREATE_LIVE_DATA_LISTENER:Lokio/Timeout;

    if-nez p2, :cond_0

    iget-object p2, p0, Landroidx/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroidx/databinding/WeakListener;

    aget-object p1, p2, p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/databinding/WeakListener;->unregister()Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroidx/databinding/WeakListener;

    aget-object v2, v2, p1

    if-nez v2, :cond_1

    invoke-virtual {p0, p1, p2, v1}, Landroidx/databinding/ViewDataBinding;->registerTo(ILandroidx/lifecycle/MutableLiveData;Lokio/Timeout;)V

    goto :goto_0

    :cond_1
    iget-object v3, v2, Landroidx/databinding/WeakListener;->mTarget:Ljava/lang/Object;

    if-ne v3, p2, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/databinding/WeakListener;->unregister()Z

    :cond_3
    invoke-virtual {p0, p1, p2, v1}, Landroidx/databinding/ViewDataBinding;->registerTo(ILandroidx/lifecycle/MutableLiveData;Lokio/Timeout;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_0
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mInLiveDataRegisterObserver:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mInLiveDataRegisterObserver:Z

    throw p1
.end method
