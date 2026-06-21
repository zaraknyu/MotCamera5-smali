.class public final Lcom/google/android/gms/internal/mlkit_common/zzal;
.super Lcom/google/android/gms/internal/mlkit_common/zzaf;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_common/zzal;


# instance fields
.field public final transient zzb:[Ljava/lang/Object;

.field public final transient zzc:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzal;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzal;-><init>(I[Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzal;->zza:Lcom/google/android/gms/internal/mlkit_common/zzal;

    return-void
.end method

.method public constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzal;->zzb:[Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzal;->zzc:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzal;->zzc:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_common/zzt;->zza(II)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzal;->zzb:[Ljava/lang/Object;

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzal;->zzc:I

    return p0
.end method

.method public final zza([Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzal;->zzb:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzal;->zzc:I

    invoke-static {v0, v1, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p0
.end method

.method public final zzb()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzal;->zzc:I

    return p0
.end method

.method public final zzc()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final zze()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzal;->zzb:[Ljava/lang/Object;

    return-object p0
.end method
