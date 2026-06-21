.class public abstract Landroidx/recyclerview/widget/ListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil;)V
    .locals 6

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Landroidx/recyclerview/widget/ListAdapter$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/ListAdapter$1;-><init>(Landroidx/recyclerview/widget/ListAdapter;)V

    new-instance v1, Landroidx/recyclerview/widget/AsyncListDiffer;

    new-instance v2, Landroidx/recyclerview/widget/OpReorderer;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/OpReorderer;-><init>(Ljava/lang/Object;)V

    sget-object v3, Landroidx/recyclerview/widget/DiffUtil;->sExecutorLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v4, Landroidx/recyclerview/widget/DiffUtil;->sDiffExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v4, :cond_0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    sput-object v4, Landroidx/recyclerview/widget/DiffUtil;->sDiffExecutor:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v3, Landroidx/recyclerview/widget/DiffUtil;->sDiffExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/16 v5, 0xd

    invoke-direct {v4, v5, v3, p1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, v2, v4}, Landroidx/recyclerview/widget/AsyncListDiffer;-><init>(Landroidx/recyclerview/widget/OpReorderer;Landroidx/sqlite/db/SimpleSQLiteQuery;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object p0, v1, Landroidx/recyclerview/widget/AsyncListDiffer;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object p0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onCurrentListChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    return-void
.end method
