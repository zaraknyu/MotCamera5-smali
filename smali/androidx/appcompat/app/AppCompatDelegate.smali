.class public abstract Landroidx/appcompat/app/AppCompatDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final sActivityDelegates:Landroidx/collection/ArraySet;

.field public static final sActivityDelegatesLock:Ljava/lang/Object;

.field public static final sAppLocalesStorageSyncLock:Ljava/lang/Object;

.field public static final sDefaultNightMode:I

.field public static sIsAutoStoreLocalesOptedIn:Ljava/lang/Boolean;

.field public static sIsFrameworkSyncChecked:Z

.field public static final sSerialExecutorForLocalesStorage:Lcom/google/mlkit/common/sdkinternal/zzm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/zzm;

    new-instance v1, Lcom/google/android/gms/tasks/zzt;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/google/android/gms/tasks/zzt;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/google/mlkit/common/sdkinternal/zzm;-><init>(Lcom/google/android/gms/tasks/zzt;)V

    sput-object v0, Landroidx/appcompat/app/AppCompatDelegate;->sSerialExecutorForLocalesStorage:Lcom/google/mlkit/common/sdkinternal/zzm;

    const/16 v0, -0x64

    sput v0, Landroidx/appcompat/app/AppCompatDelegate;->sDefaultNightMode:I

    const/4 v0, 0x0

    sput-object v0, Landroidx/appcompat/app/AppCompatDelegate;->sIsAutoStoreLocalesOptedIn:Ljava/lang/Boolean;

    const/4 v1, 0x0

    sput-boolean v1, Landroidx/appcompat/app/AppCompatDelegate;->sIsFrameworkSyncChecked:Z

    new-instance v1, Landroidx/collection/ArraySet;

    invoke-direct {v1, v0}, Landroidx/collection/ArraySet;-><init>(Ljava/lang/Object;)V

    sput-object v1, Landroidx/appcompat/app/AppCompatDelegate;->sActivityDelegates:Landroidx/collection/ArraySet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/appcompat/app/AppCompatDelegate;->sActivityDelegatesLock:Ljava/lang/Object;

    return-void
.end method

.method public static isAutoStorageOptedIn(Landroid/content/Context;)Z
    .locals 4

    sget-object v0, Landroidx/appcompat/app/AppCompatDelegate;->sIsAutoStoreLocalesOptedIn:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    sget v0, Landroidx/appcompat/app/AppLocalesMetadataHolderService;->$r8$clinit:I

    invoke-static {}, Landroidx/appcompat/app/AppLocalesMetadataHolderService$Api24Impl;->getDisabledComponentFlag()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Landroidx/appcompat/app/AppLocalesMetadataHolderService;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v0, "autoStoreLocales"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Landroidx/appcompat/app/AppCompatDelegate;->sIsAutoStoreLocalesOptedIn:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppCompatDelegate"

    const-string v0, "Checking for metadata for AppLocalesMetadataHolderService : Service not found"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Landroidx/appcompat/app/AppCompatDelegate;->sIsAutoStoreLocalesOptedIn:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    sget-object p0, Landroidx/appcompat/app/AppCompatDelegate;->sIsAutoStoreLocalesOptedIn:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static removeDelegateFromActives(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 3

    sget-object v0, Landroidx/appcompat/app/AppCompatDelegate;->sActivityDelegatesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/appcompat/app/AppCompatDelegate;->sActivityDelegates:Landroidx/collection/ArraySet;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/collection/ArrayMap$KeyIterator;

    invoke-direct {v2, v1}, Landroidx/collection/ArrayMap$KeyIterator;-><init>(Landroidx/collection/ArraySet;)V

    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroidx/collection/ArrayMap$KeyIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Landroidx/collection/ArrayMap$KeyIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/AppCompatDelegate;

    if-eq v1, p0, :cond_1

    if-nez v1, :cond_0

    :cond_1
    invoke-virtual {v2}, Landroidx/collection/ArrayMap$KeyIterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract installViewFactory()V
.end method

.method public abstract onCreate()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract requestWindowFeature(I)Z
.end method

.method public abstract setContentView(I)V
.end method

.method public abstract setContentView(Landroid/view/View;)V
.end method

.method public abstract setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method
