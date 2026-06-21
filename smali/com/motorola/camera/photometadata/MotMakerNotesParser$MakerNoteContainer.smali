.class public final Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final bytes:[B

.field public final count:I

.field public final type:I


# direct methods
.method public constructor <init>(II[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->type:I

    iput p2, p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->count:I

    iput-object p3, p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->bytes:[B

    return-void
.end method


# virtual methods
.method public final getStringValue(Z)Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->type:I

    const/16 v1, 0x2c

    const/16 v2, 0x80

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v5, p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->count:I

    iget-object p0, p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->bytes:[B

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_6

    :pswitch_1
    if-ne v5, v3, :cond_0

    invoke-static {v4, p1, p0}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->readInt(IZ[B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move v2, v4

    :goto_0
    if-ge v4, v5, :cond_2

    invoke-static {v2, p1, p0}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->readInt(IZ[B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v5, -0x1

    if-eq v4, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    if-ne v5, v3, :cond_3

    invoke-static {v4, p1, p0}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->readInt(IZ[B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move v2, v4

    :goto_1
    if-ge v4, v5, :cond_5

    invoke-static {v2, p1, p0}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->readInt(IZ[B)I

    move-result v3

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v5, -0x1

    if-eq v4, v3, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    if-ne v5, v3, :cond_6

    invoke-static {v4, p1, p0}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->readShort(IZ[B)S

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move v2, v4

    :goto_2
    if-ge v4, v5, :cond_8

    invoke-static {v2, p1, p0}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->readShort(IZ[B)S

    move-result v3

    add-int/lit8 v2, v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v5, -0x1

    if-eq v4, v3, :cond_7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    if-ne v5, v3, :cond_9

    aget-byte p0, p0, v4

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v4

    :goto_3
    if-ge v4, v5, :cond_b

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    add-int/2addr v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v5, -0x1

    if-eq v4, v2, :cond_a

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    if-ne v5, v3, :cond_c

    invoke-static {v4, p1, p0}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->readUint(IZ[B)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move v2, v4

    :goto_4
    if-ge v4, v5, :cond_e

    invoke-static {v2, p1, p0}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->readUint(IZ[B)J

    move-result-wide v6

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v5, -0x1

    if-eq v4, v3, :cond_d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    if-ne v5, v3, :cond_f

    invoke-static {v4, p1, p0}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->readUshort(IZ[B)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move v2, v4

    :goto_5
    if-ge v4, v5, :cond_11

    invoke-static {v2, p1, p0}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->readUshort(IZ[B)C

    move-result v3

    add-int/lit8 v2, v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v5, -0x1

    if-eq v4, v3, :cond_10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    :try_start_0
    new-instance p1, Ljava/lang/String;

    sub-int/2addr v5, v3

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v4, v5, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :goto_6
    const/4 p0, 0x0

    return-object p0

    :pswitch_8
    if-ne v5, v3, :cond_12

    aget-byte p0, p0, v4

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v4

    :goto_7
    if-ge v4, v5, :cond_14

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    add-int/2addr v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v5, -0x1

    if-eq v4, v2, :cond_13

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
