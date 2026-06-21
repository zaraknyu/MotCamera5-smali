.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzu;

.field public static final zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzz;


# instance fields
.field public final zzc:Ljava/lang/String;

.field public final zzd:Ljava/lang/String;

.field public final zze:Lcom/google/android/gms/internal/mlkit_vision_common/zzmf;

.field public final zzf:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

.field public final zzg:Lcom/google/android/gms/tasks/zzw;

.field public final zzh:Lcom/google/android/gms/tasks/zzw;

.field public final zzi:Ljava/lang/String;

.field public final zzj:I

.field public final zzk:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "optional-module-barcode"

    const-string v1, "com.google.android.gms.vision.barcode"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;-><init>(I[Ljava/lang/Object;)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/android/gms/internal/mlkit_vision_common/zzmf;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzk:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzc:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/mlkit/common/sdkinternal/CommonUtils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzd:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzf:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zze:Lcom/google/android/gms/internal/mlkit_vision_common/zzmf;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;->zza()V

    const-string/jumbo p3, "vision-common"

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzi:Ljava/lang/String;

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzse;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/internal/mlkit_common/zzse;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->scheduleCallable(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/zzw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzg:Lcom/google/android/gms/tasks/zzw;

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzsf;

    invoke-direct {v1, p2, v2}, Lcom/google/android/gms/internal/mlkit_common/zzsf;-><init>(Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->scheduleCallable(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/zzw;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzh:Lcom/google/android/gms/tasks/zzw;

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzz;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzj:I

    return-void
.end method
