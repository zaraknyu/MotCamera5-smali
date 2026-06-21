.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfk;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;


# instance fields
.field public final zzb:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    filled-new-array {v0, v1}, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfk;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;-><init>([Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfk;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->zza:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zzb:Ljava/lang/Object;

    return-void

    .line 4
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zzb:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->zza:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zzb:Ljava/lang/Object;

    iput-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zzb:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zzb:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfk;

    aget-object v1, v1, v0

    .line 1
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfk;->zzc(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfk;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "No factory is available for message type: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zzb:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzh()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result p0

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zza:[I

    invoke-static {v1, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-gez p0, :cond_0

    add-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    add-int/lit8 v1, p0, 0x1

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzc(I)I

    move-result v1

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v2

    if-lt v2, v1, :cond_1

    goto :goto_2

    .line 9
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzc(I)I

    move-result p0

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    .line 11
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v2

    if-ge v2, p0, :cond_2

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;

    .line 13
    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)V

    move-object v1, v3

    goto :goto_0

    .line 14
    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;

    .line 15
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)V

    .line 16
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 17
    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzc:I

    .line 18
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zza:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-gez p1, :cond_3

    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzc(I)I

    move-result p1

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v1

    if-ge v1, p1, :cond_4

    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;

    .line 22
    invoke-direct {v1, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)V

    move-object p0, v1

    goto :goto_1

    .line 23
    :cond_4
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void

    .line 24
    :cond_5
    :goto_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void

    .line 25
    :cond_6
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;

    if-eqz v0, :cond_7

    .line 26
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;

    .line 27
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    .line 28
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)V

    .line 29
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    .line 30
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)V

    return-void

    .line 31
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Has a new type of ByteString been created? Found "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public zzc(Ljava/lang/Class;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zzb:Ljava/lang/Object;

    check-cast v2, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfk;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfk;->zzc(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzge;)V
    .locals 1

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zzb:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzr(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;

    invoke-interface {p3, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzge;->zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;)V

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzr(II)V

    return-void
.end method

.method public zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzge;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zzb:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;->zzB(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzge;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;

    invoke-interface {p3, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzge;->zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;)V

    return-void
.end method
