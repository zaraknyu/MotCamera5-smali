.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# static fields
.field public static final zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;


# instance fields
.field public zza:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->zzb:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;

    sget v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzct;->$r8$clinit:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zza:I

    return-void
.end method

.method public static zzc(Ljava/util/Iterator;I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;
    .locals 9

    if-lez p1, :cond_e

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    return-object p0

    :cond_0
    ushr-int/lit8 v1, p1, 0x1

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzc(Ljava/util/Iterator;I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    move-result-object v2

    sub-int/2addr p1, v1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzc(Ljava/util/Iterator;I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    move-result-object p0

    const p1, 0x7fffffff

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v1

    if-lt p1, v1, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result p1

    if-nez p1, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result p1

    if-nez p1, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v1

    add-int/2addr v1, p1

    const/4 p1, 0x0

    const/16 v3, 0x80

    if-ge v1, v3, :cond_5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v1

    add-int v3, v0, v1

    new-array v4, v3, [B

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v5

    invoke-static {p1, v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzo(III)I

    invoke-static {p1, v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzo(III)I

    if-lez v0, :cond_3

    invoke-virtual {v2, v4, p1, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zze([BIII)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzo(III)I

    invoke-static {v0, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzo(III)I

    if-lez v1, :cond_4

    invoke-virtual {p0, v4, p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zze([BIII)V

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;-><init>([B)V

    return-object p0

    :cond_5
    instance-of v4, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;

    if-eqz v4, :cond_a

    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;

    iget-object v5, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    iget-object v6, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v8

    add-int/2addr v8, v7

    if-ge v8, v3, :cond_8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v1

    add-int v2, v0, v1

    new-array v3, v2, [B

    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzo(III)I

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzo(III)I

    if-lez v0, :cond_6

    invoke-virtual {v6, v3, p1, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zze([BIII)V

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v4

    invoke-static {p1, v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzo(III)I

    invoke-static {v0, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzo(III)I

    if-lez v1, :cond_7

    invoke-virtual {p0, v3, p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zze([BIII)V

    :cond_7
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;-><init>([B)V

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;

    invoke-direct {p1, v5, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)V

    return-object p1

    :cond_8
    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzf()I

    move-result p1

    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzf()I

    move-result v3

    if-le p1, v3, :cond_a

    iget p1, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzg:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzf()I

    move-result v3

    if-gt p1, v3, :cond_9

    goto :goto_0

    :cond_9
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;

    invoke-direct {p1, v6, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)V

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;

    invoke-direct {p0, v5, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)V

    return-object p0

    :cond_a
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzf()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzf()I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, v0

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzc(I)I

    move-result p1

    if-lt v1, p1, :cond_b

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;

    invoke-direct {p1, v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)V

    return-object p1

    :cond_b
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;-><init>(I)V

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)V

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zzb:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)V

    move-object p1, v1

    goto :goto_1

    :cond_c
    return-object p1

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result p0

    const-string v1, "ByteString would be too long: "

    const-string v2, "+"

    invoke-static {v1, v0, p0, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "length ("

    const-string v1, ") must be >= 1"

    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zzo(III)I
    .locals 3

    or-int v0, p0, p1

    sub-int v1, p1, p0

    or-int/2addr v0, v1

    sub-int v2, p2, p1

    or-int/2addr v0, v2

    if-gez v0, :cond_2

    if-ltz p0, :cond_1

    if-ge p1, p0, :cond_0

    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Beginning index larger than ending index: "

    const-string v1, ", "

    invoke-static {v0, p0, p1, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "End index: "

    const-string v1, " >= "

    invoke-static {v0, p1, p2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Beginning index: "

    const-string v0, " < 0"

    invoke-static {p2, p0, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v1
.end method

.method public static zzr(II[B)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;
    .locals 3

    add-int v0, p0, p1

    array-length v1, p2

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzo(III)I

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;

    new-array v1, p1, [B

    const/4 v2, 0x0

    invoke-static {p2, p0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;-><init>([B)V

    return-object v0
.end method

.method public static zzs(Ljava/io/InputStream;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x100

    :goto_0
    new-array v2, v1, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_1

    sub-int v5, v1, v4

    invoke-virtual {p0, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    goto :goto_2

    :cond_0
    add-int/2addr v4, v5

    goto :goto_1

    :cond_1
    :goto_2
    if-nez v4, :cond_2

    const/4 v2, 0x0

    goto :goto_3

    :cond_2
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzr(II[B)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;

    move-result-object v2

    :goto_3
    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;

    return-object p0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzc(Ljava/util/Iterator;I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v1

    const/16 v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method public static zzu(II)V
    .locals 3

    add-int/lit8 v0, p0, 0x1

    sub-int v0, p1, v0

    or-int/2addr v0, p0

    if-gez v0, :cond_1

    if-gez p0, :cond_0

    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "Index < 0: "

    invoke-static {p0, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Index > length: "

    const-string v2, ", "

    invoke-static {v1, p0, p1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zza:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v1

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzi(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zza:I

    :cond_1
    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzq()Lcom/google/android/gms/internal/mlkit_common/zzas;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v2

    const/16 v3, 0x32

    if-gt v2, v3, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzaw;->zza(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/16 v3, 0x2f

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzk(II)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzaw;->zza(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "..."

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<ByteString@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " size="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " contents=\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\">"

    invoke-static {v2, p0, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract zza(I)B
.end method

.method public abstract zzb(I)B
.end method

.method public abstract zzd()I
.end method

.method public abstract zze([BIII)V
.end method

.method public abstract zzf()I
.end method

.method public abstract zzh()Z
.end method

.method public abstract zzi(III)I
.end method

.method public abstract zzj(III)I
.end method

.method public abstract zzk(II)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;
.end method

.method public abstract zzl(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract zzm(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;)V
.end method

.method public abstract zzn()Z
.end method

.method public zzq()Lcom/google/android/gms/internal/mlkit_common/zzas;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)V

    return-object v0
.end method
