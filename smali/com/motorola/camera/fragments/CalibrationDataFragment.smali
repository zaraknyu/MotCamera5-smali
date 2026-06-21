.class public Lcom/motorola/camera/fragments/CalibrationDataFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mAdapter:Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

.field public mExecutor:Ljava/util/concurrent/ExecutorService;

.field public mExpandableListView:Landroid/widget/ExpandableListView;

.field public final mHandler:Landroidx/preference/PreferenceFragmentCompat$1;

.field public final mOpenGroupSet:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mOpenGroupSet:Ljava/util/HashSet;

    new-instance v0, Landroidx/preference/PreferenceFragmentCompat$1;

    invoke-direct {v0, p0}, Landroidx/preference/PreferenceFragmentCompat$1;-><init>(Lcom/motorola/camera/fragments/CalibrationDataFragment;)V

    iput-object v0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mHandler:Landroidx/preference/PreferenceFragmentCompat$1;

    return-void
.end method


# virtual methods
.method public final doDataIO(Lcom/google/android/gms/internal/mlkit_vision_common/zzjf;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/play/core/splitcompat/zzc;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/play/core/splitcompat/zzc;-><init>(I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_1
    new-instance v0, Landroidx/lifecycle/LiveData$1;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroidx/lifecycle/LiveData$1;-><init>(I)V

    iput-object p1, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

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

    iget-object p0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const p3, 0x7f0d007b

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a007f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    sget-object p3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->QCOM_VERSION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {p3}, Lcom/motorola/camera/shared/DeviceProperties;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object p3

    const/16 v1, 0x8

    const-string v2, ""

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1200cc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {v3, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const p2, 0x7f0a00b4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p3

    iget-object p3, p3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p3, 0x0

    :goto_1
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1200cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {v1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_1
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    const p2, 0x7f0a00b2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ExpandableListView;

    iput-object p2, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    new-instance p3, Lcom/motorola/camera/fragments/ReportFragment$ReportListChildClickListener;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Lcom/motorola/camera/fragments/ReportFragment$ReportListChildClickListener;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    const p2, 0x7f0a016d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {p3, p2}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    new-instance v0, Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string p2, "keytype"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v3

    const p2, 0x7f0a0445

    filled-new-array {p2}, [I

    move-result-object v4

    const-string p3, "keytag"

    const-string v1, "calbrtnvalue"

    filled-new-array {p3, v1}, [Ljava/lang/String;

    move-result-object v5

    const p3, 0x7f0a0446

    filled-new-array {p2, p3}, [I

    move-result-object v6

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;-><init>(Landroidx/fragment/app/Fragment;Lcom/motorola/camera/CameraApp;[Ljava/lang/String;[I[Ljava/lang/String;[II)V

    iput-object v0, v1, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mAdapter:Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

    new-instance p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$$ExternalSyntheticLambda0;

    invoke-direct {p0, v1}, Lcom/motorola/camera/fragments/CalibrationDataFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fragments/CalibrationDataFragment;)V

    invoke-virtual {v0, p0}, Landroid/widget/SimpleCursorTreeAdapter;->setViewBinder(Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;)V

    iget-object p0, v1, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    iget-object p2, v1, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mAdapter:Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

    invoke-virtual {p0, p2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    new-instance p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetGroupDataDBOperation;

    invoke-direct {p0, v1}, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetGroupDataDBOperation;-><init>(Lcom/motorola/camera/fragments/CalibrationDataFragment;)V

    invoke-virtual {v1, p0}, Lcom/motorola/camera/fragments/CalibrationDataFragment;->doDataIO(Lcom/google/android/gms/internal/mlkit_vision_common/zzjf;)V

    return-object p1
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mAdapter:Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mAdapter:Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method
