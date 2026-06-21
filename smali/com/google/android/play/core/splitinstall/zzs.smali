.class public final Lcom/google/android/play/core/splitinstall/zzs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zzb:Lkotlinx/coroutines/internal/Symbol;


# instance fields
.field public final zzc:Landroid/content/Context;

.field public final zzd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "SplitInstallInfoProvider"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/splitinstall/zzs;->zzb:Lkotlinx/coroutines/internal/Symbol;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/zzs;->zzc:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/zzs;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzc()Ljava/util/HashSet;
    .locals 7

    sget-object v0, Lcom/google/android/play/core/splitinstall/zzs;->zzb:Lkotlinx/coroutines/internal/Symbol;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/zzs;->zzc:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/zzs;->zzd:Ljava/lang/String;

    const/16 v3, 0x80

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array p0, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x6

    const-string v3, "PlayCore"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lkotlinx/coroutines/internal/Symbol;->symbol:Ljava/lang/String;

    const-string v4, "App is not found in PackageManager"

    invoke-static {v2, v4, p0}, Lkotlinx/coroutines/internal/Symbol;->zzf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_a

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_1

    goto/16 :goto_5

    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const-string v5, "com.android.dynamic.apk.fused.modules"

    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const-string v5, ","

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v3, ""

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const-string v3, "base"

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    :goto_1
    const-string v3, "App has no fused modules."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5}, Lkotlinx/coroutines/internal/Symbol;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    if-eqz p0, :cond_5

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Adding splits from package manager: %s"

    invoke-virtual {v0, v3, v1}, Lkotlinx/coroutines/internal/Symbol;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-array p0, v1, [Ljava/lang/Object;

    const-string v1, "No splits are found or app cannot be found in package manager."

    invoke-virtual {v0, v1, p0}, Lkotlinx/coroutines/internal/Symbol;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    sget-object p0, Lcom/google/android/play/core/splitinstall/zzr;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_9

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "config."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, ".config."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    return-object v2

    :cond_9
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_a
    :goto_5
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method
