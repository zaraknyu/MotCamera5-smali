.class public final synthetic Lcom/motorola/camera/photometadata/PhotoMetadata$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$2:Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;


# direct methods
.method public synthetic constructor <init>(ZLjava/util/concurrent/atomic/AtomicBoolean;Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$$ExternalSyntheticLambda0;->f$2:Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$$ExternalSyntheticLambda0;->f$2:Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;

    check-cast p1, Ljava/lang/Byte;

    check-cast p2, Ljava/util/List;

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    const/16 v3, -0x1e

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/motorola/camera/photometadata/PhotoMetadata;->IDENTIFIER_ICC_APP2:[B

    array-length v3, v2

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$$ExternalSyntheticLambda0;->f$0:Z

    iget-object v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    array-length v2, v1

    add-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([B)V

    sget-boolean v2, Lcom/motorola/camera/photometadata/PhotoMetadata;->DEBUG_READ_WRITE:Z

    if-eqz v2, :cond_0

    const-string v2, "PhotoMetadata"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Copy MARKER_APP2 data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    const/16 v5, 0x14

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :cond_3
    return-void
.end method
