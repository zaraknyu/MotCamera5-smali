.class public abstract Landroidx/lifecycle/ViewModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final impl:Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;

    invoke-direct {v0}, Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ViewModel;->impl:Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;

    return-void
.end method


# virtual methods
.method public final clear$lifecycle_viewmodel_release()V
    .locals 4

    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->impl:Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;->isCleared:Z

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;->isCleared:Z

    iget-object v1, v0, Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;->lock:Landroidx/lifecycle/viewmodel/internal/SynchronizedObject;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;->keyToCloseables:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/AutoCloseable;

    invoke-static {v3}, Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;->closeWithRuntimeException(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    iget-object v2, v0, Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;->closeables:Ljava/util/LinkedHashSet;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/AutoCloseable;

    invoke-static {v3}, Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;->closeWithRuntimeException(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    :cond_2
    iget-object v0, v0, Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;->closeables:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1

    throw p0

    :cond_3
    :goto_3
    invoke-virtual {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    return-void
.end method

.method public onCleared()V
    .locals 0

    return-void
.end method
