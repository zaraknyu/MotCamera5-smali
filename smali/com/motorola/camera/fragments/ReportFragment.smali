.class public abstract Lcom/motorola/camera/fragments/ReportFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mAdapter:Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

.field public mExecutor:Ljava/util/concurrent/ExecutorService;

.field public mExpandableListView:Landroid/widget/ExpandableListView;

.field public final mHandler:Landroid/os/Handler;

.field public final mOpenGroupSet:Ljava/util/HashSet;

.field public final mOperations:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mOperations:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mOpenGroupSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final doDataIO(Lcom/motorola/camera/fragments/ReportFragment$DBOperations;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/play/core/splitcompat/zzc;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/play/core/splitcompat/zzc;-><init>(I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mOperations:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/fragments/ReportFragment;->mOperations:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroidx/lifecycle/LiveData$1;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Landroidx/lifecycle/LiveData$1;-><init>(I)V

    iput-object p1, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    :try_start_1
    iget-object v1, p0, Lcom/motorola/camera/fragments/ReportFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error executing current measure runnable:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const p3, 0x7f0d0081

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a026f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance p3, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;

    const/16 v1, 0xc

    invoke-direct {p3, v1, p0}, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a026e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ExpandableListView;

    iput-object p2, p0, Lcom/motorola/camera/fragments/ReportFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    new-instance p3, Lcom/motorola/camera/fragments/ReportFragment$ReportListChildClickListener;

    const/4 v1, 0x0

    invoke-direct {p3, v1}, Lcom/motorola/camera/fragments/ReportFragment$ReportListChildClickListener;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    new-instance v2, Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string p2, "keytag"

    const-string p3, "keyvalue"

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f0a0445

    const v3, 0x7f0a0446

    filled-new-array {v1, v3}, [I

    move-result-object v6

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object v7

    filled-new-array {v1, v3}, [I

    move-result-object v8

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;-><init>(Landroidx/fragment/app/Fragment;Lcom/motorola/camera/CameraApp;[Ljava/lang/String;[I[Ljava/lang/String;[II)V

    iput-object v2, v3, Lcom/motorola/camera/fragments/ReportFragment;->mAdapter:Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

    new-instance p0, Lcom/motorola/camera/fragments/ReportFragment$$ExternalSyntheticLambda4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, p0}, Landroid/widget/SimpleCursorTreeAdapter;->setViewBinder(Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;)V

    iget-object p0, v3, Lcom/motorola/camera/fragments/ReportFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    iget-object p2, v3, Lcom/motorola/camera/fragments/ReportFragment;->mAdapter:Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

    invoke-virtual {p0, p2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    new-instance p0, Lcom/motorola/camera/fragments/ReportFragment$ClearDataDBOperation;

    const/4 p2, 0x1

    invoke-direct {p0, v3, p2}, Lcom/motorola/camera/fragments/ReportFragment$ClearDataDBOperation;-><init>(Lcom/motorola/camera/fragments/ReportFragment;I)V

    invoke-virtual {v3, p0}, Lcom/motorola/camera/fragments/ReportFragment;->doDataIO(Lcom/motorola/camera/fragments/ReportFragment$DBOperations;)V

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string p2, "com.motorola.camera_debug_report"

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    iget-object p2, v3, Lcom/motorola/camera/fragments/ReportFragment;->TAG:Ljava/lang/String;

    invoke-interface {p0, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const p2, 0x7f0a0270

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p2, p0}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance p0, Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;

    const/4 p3, 0x1

    invoke-direct {p0, p3, v3}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mAdapter:Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/fragments/ReportFragment;->mOperations:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/fragments/ReportFragment;->mOperations:Ljava/util/Set;

    new-instance v3, Lcom/motorola/camera/fragments/ReportFragment$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/motorola/camera/fragments/ReportFragment$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    iget-object v2, p0, Lcom/motorola/camera/fragments/ReportFragment;->mOperations:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/motorola/camera/fragments/ReportFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/4 v3, 0x6

    invoke-direct {v2, v3, v0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :catch_0
    :goto_1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
