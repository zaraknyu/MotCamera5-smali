.class public final Lcom/google/android/gms/common/api/GoogleApi$Settings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_SETTINGS:Lcom/google/android/gms/common/api/GoogleApi$Settings;


# instance fields
.field public final zaa:Lcom/google/mlkit/common/internal/zze;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/mlkit/common/internal/zze;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/google/mlkit/common/internal/zze;-><init>(I)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/GoogleApi$Settings;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/common/api/GoogleApi$Settings;-><init>(Lcom/google/mlkit/common/internal/zze;Landroid/os/Looper;)V

    sput-object v2, Lcom/google/android/gms/common/api/GoogleApi$Settings;->DEFAULT_SETTINGS:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    return-void
.end method

.method public constructor <init>(Lcom/google/mlkit/common/internal/zze;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApi$Settings;->zaa:Lcom/google/mlkit/common/internal/zze;

    return-void
.end method
