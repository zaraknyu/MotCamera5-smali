.class public final Landroidx/databinding/WeakListener;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# instance fields
.field public final mLocalFieldId:I

.field public final mObservable:Landroidx/databinding/ViewDataBinding$LiveDataListener;

.field public mTarget:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ViewDataBinding$LiveDataListener;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0

    invoke-direct {p0, p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput p2, p0, Landroidx/databinding/WeakListener;->mLocalFieldId:I

    iput-object p3, p0, Landroidx/databinding/WeakListener;->mObservable:Landroidx/databinding/ViewDataBinding$LiveDataListener;

    return-void
.end method


# virtual methods
.method public final unregister()Z
    .locals 2

    iget-object v0, p0, Landroidx/databinding/WeakListener;->mTarget:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/databinding/WeakListener;->mObservable:Landroidx/databinding/ViewDataBinding$LiveDataListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/databinding/WeakListener;->mTarget:Ljava/lang/Object;

    return v0
.end method
