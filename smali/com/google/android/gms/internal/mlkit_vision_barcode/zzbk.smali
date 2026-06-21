.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic $r8$classId:I

.field public zza:Ljava/lang/Object;

.field public zzb:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;Ljava/util/Iterator;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;

    new-instance v0, Ljava/util/ArrayDeque;

    .line 3
    iget v1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzg:I

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->zza:Ljava/lang/Object;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    .line 7
    :goto_0
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->zza:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    goto :goto_0

    .line 10
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->zzb:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->zza:Ljava/lang/Object;

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->zzb:Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->$r8$classId:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->zza:Ljava/lang/Object;

    .line 15
    :goto_0
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;

    if-eqz v0, :cond_0

    .line 16
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->zza:Ljava/lang/Object;

    check-cast v0, Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;->left:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    goto :goto_0

    .line 19
    :cond_0
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->zzb:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->zzb:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->zzb:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->zzb:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->next()Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    move-result-object p0

    return-object p0

    .line 2
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;

    move-result-object p0

    return-object p0

    .line 3
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->zzb:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->zza:Ljava/lang/Object;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public next()Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->zza:Ljava/lang/Object;

    check-cast v0, Ljava/util/Stack;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->zzb:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    if-eqz v1, :cond_3

    .line 6
    :goto_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_2

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;

    .line 8
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;->right:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 9
    :goto_1
    instance-of v3, v2, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;

    if-eqz v3, :cond_1

    .line 10
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;->left:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    goto :goto_1

    .line 13
    :cond_1
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    .line 14
    iget-object v3, v2, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    .line 15
    array-length v3, v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 16
    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->zzb:Ljava/lang/Object;

    return-object v1

    .line 17
    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->zza:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxa;->zzf(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->zza:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->zzb:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->zza:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->zza:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->zzb:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;

    if-eqz v1, :cond_4

    :cond_0
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;

    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    :goto_0
    instance-of v3, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;

    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    goto :goto_0

    :cond_2
    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zzd()I

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    :goto_1
    iput-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->zzb:Ljava/lang/Object;

    return-object v1

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
