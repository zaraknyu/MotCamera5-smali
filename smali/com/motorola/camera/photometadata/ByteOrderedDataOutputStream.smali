.class public final Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field public mByteOrder:Ljava/nio/ByteOrder;

.field public final mOutputStream:Ljava/io/OutputStream;

.field public pos:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->pos:I

    iput-object p1, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    return-void
.end method


# virtual methods
.method public final write([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 2
    iget v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->pos:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->pos:I

    return-void
.end method

.method public final write([BII)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 4
    iget p1, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->pos:I

    return-void
.end method

.method public final writeByte(I)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget p1, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->pos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->pos:I

    return-void
.end method

.method public final writeInt(I)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iget-object v2, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    if-ne v0, v1, :cond_0

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write(I)V

    :cond_1
    :goto_0
    iget p1, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->pos:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->pos:I

    return-void
.end method

.method public final writeShort(S)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iget-object v2, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    if-ne v0, v1, :cond_0

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write(I)V

    :cond_1
    :goto_0
    iget p1, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->pos:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->pos:I

    return-void
.end method
