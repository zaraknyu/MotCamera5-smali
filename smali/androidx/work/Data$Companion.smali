.class public abstract Landroidx/work/Data$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static fromByteArray([B)Landroidx/work/Data;
    .locals 7

    const-string v0, "Error in Data#fromByteArray: "

    const-string v1, "bytes"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, p0

    const/16 v2, 0x2800

    if-gt v1, v2, :cond_7

    array-length v1, p0

    if-nez v1, :cond_0

    sget-object p0, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    return-object p0

    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p0, 0x2

    new-array p0, p0, [B

    invoke-virtual {v2, p0}, Ljava/io/InputStream;->read([B)I

    const/16 v3, -0x5313

    int-to-byte v3, v3

    const v4, 0xffffac

    int-to-byte v4, v4

    const/4 v5, 0x0

    aget-byte v6, p0, v5

    if-ne v6, v4, :cond_1

    const/4 v4, 0x1

    aget-byte p0, p0, v4

    if-ne p0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->reset()V

    if-eqz v4, :cond_3

    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    :goto_1
    if-ge v5, v2, :cond_2

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "readUTF()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p0

    goto :goto_6

    :goto_2
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {p0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_3
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    const/16 v3, -0x5411

    if-ne v2, v3, :cond_6

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    :goto_3
    if-ge v5, v2, :cond_4

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    invoke-static {p0, v3}, Landroidx/work/Data$Companion;->fromByteArray$readValue(Ljava/io/DataInputStream;B)Ljava/io/Serializable;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    const-string v6, "key"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :catchall_2
    move-exception v2

    goto :goto_4

    :cond_4
    :try_start_6
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_7

    :cond_5
    :try_start_7
    const-string v3, "Unsupported version number: "

    invoke-static {v2, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    const-string v3, "Magic number doesn\'t match: "

    invoke-static {v2, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_4
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v3

    :try_start_9
    invoke-static {p0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_0

    :goto_5
    sget-object v2, Landroidx/work/Data_Kt;->TAG:Ljava/lang/String;

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v3

    invoke-virtual {v3, v2, v0, p0}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :goto_6
    sget-object v2, Landroidx/work/Data_Kt;->TAG:Ljava/lang/String;

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v3

    invoke-virtual {v3, v2, v0, p0}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    new-instance p0, Landroidx/work/Data;

    invoke-direct {p0, v1}, Landroidx/work/Data;-><init>(Ljava/util/LinkedHashMap;)V

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Data cannot occupy more than 10240 bytes when serialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final fromByteArray$readValue(Ljava/io/DataInputStream;B)Ljava/io/Serializable;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 v1, 0x6

    if-ne p1, v1, :cond_6

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 v1, 0x7

    if-ne p1, v1, :cond_7

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v1, :cond_9

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    new-array v0, p1, [Ljava/lang/Boolean;

    :goto_0
    if-ge v2, p1, :cond_8

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    return-object v0

    :cond_9
    const/16 v1, 0x9

    if-ne p1, v1, :cond_b

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    new-array v0, p1, [Ljava/lang/Byte;

    :goto_1
    if-ge v2, p1, :cond_a

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_a
    return-object v0

    :cond_b
    const/16 v1, 0xa

    if-ne p1, v1, :cond_d

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    new-array v0, p1, [Ljava/lang/Integer;

    :goto_2
    if-ge v2, p1, :cond_c

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_c
    return-object v0

    :cond_d
    const/16 v1, 0xb

    if-ne p1, v1, :cond_f

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    new-array v0, p1, [Ljava/lang/Long;

    :goto_3
    if-ge v2, p1, :cond_e

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    return-object v0

    :cond_f
    const/16 v1, 0xc

    if-ne p1, v1, :cond_11

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    new-array v0, p1, [Ljava/lang/Float;

    :goto_4
    if-ge v2, p1, :cond_10

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_10
    return-object v0

    :cond_11
    const/16 v1, 0xd

    if-ne p1, v1, :cond_13

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    new-array v0, p1, [Ljava/lang/Double;

    :goto_5
    if-ge v2, p1, :cond_12

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_12
    return-object v0

    :cond_13
    const/16 v1, 0xe

    if-ne p1, v1, :cond_16

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    new-array v1, p1, [Ljava/lang/String;

    :goto_6
    if-ge v2, p1, :cond_15

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    const-string v4, "androidx.work.Data-95ed6082-b8e9-46e8-a73f-ff56f00f5d9d"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    move-object v3, v0

    :cond_14
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_15
    return-object v1

    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unsupported type "

    invoke-static {p1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toByteArrayInternalV1(Landroidx/work/Data;)[B
    .locals 4

    const-string v0, "data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/Data;->values:Ljava/util/HashMap;

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, -0x5411

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v3, v2}, Landroidx/work/Data$Companion;->toByteArrayInternalV1$writeEntry(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->size()I

    move-result p0

    const/16 v2, 0x2800

    if-gt p0, v2, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    const-string/jumbo v0, "{\n                ByteAr\u2026          }\n            }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :cond_1
    :try_start_3
    const-string p0, "Data cannot occupy more than 10240 bytes when serialized"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    sget-object v0, Landroidx/work/Data_Kt;->TAG:Ljava/lang/String;

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v1

    const-string v2, "Error in Data#toByteArray: "

    invoke-virtual {v1, v0, v2, p0}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public static final toByteArrayInternalV1$writeEntry(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto/16 :goto_9

    :cond_0
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto/16 :goto_9

    :cond_1
    instance-of v3, v1, Ljava/lang/Byte;

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto/16 :goto_9

    :cond_2
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto/16 :goto_9

    :cond_3
    instance-of v3, v1, Ljava/lang/Long;

    if-eqz v3, :cond_4

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto/16 :goto_9

    :cond_4
    instance-of v3, v1, Ljava/lang/Float;

    if-eqz v3, :cond_5

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto/16 :goto_9

    :cond_5
    instance-of v3, v1, Ljava/lang/Double;

    if-eqz v3, :cond_6

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto/16 :goto_9

    :cond_6
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_7

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_7
    instance-of v3, v1, [Ljava/lang/Object;

    const-string v4, "Unsupported value type "

    if-eqz v3, :cond_25

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v5, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v5, v3}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-class v6, [Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/16 v7, 0xe

    const/16 v8, 0xd

    const/16 v9, 0xc

    const/16 v10, 0xb

    const/16 v11, 0xa

    const/16 v12, 0x9

    const/16 v13, 0x8

    if-eqz v6, :cond_8

    move v3, v13

    goto :goto_0

    :cond_8
    const-class v6, [Ljava/lang/Byte;

    invoke-virtual {v5, v6}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v3, v12

    goto :goto_0

    :cond_9
    const-class v6, [Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    move v3, v11

    goto :goto_0

    :cond_a
    const-class v6, [Ljava/lang/Long;

    invoke-virtual {v5, v6}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    move v3, v10

    goto :goto_0

    :cond_b
    const-class v6, [Ljava/lang/Float;

    invoke-virtual {v5, v6}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    move v3, v9

    goto :goto_0

    :cond_c
    const-class v6, [Ljava/lang/Double;

    invoke-virtual {v5, v6}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move v3, v8

    goto :goto_0

    :cond_d
    const-class v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    move v3, v7

    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    array-length v4, v1

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    array-length v4, v1

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_23

    aget-object v6, v1, v5

    const/4 v14, 0x0

    if-ne v3, v13, :cond_10

    instance-of v15, v6, Ljava/lang/Boolean;

    if-eqz v15, :cond_e

    move-object v14, v6

    check-cast v14, Ljava/lang/Boolean;

    :cond_e
    if-eqz v14, :cond_f

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_2

    :cond_f
    move v6, v2

    :goto_2
    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto/16 :goto_8

    :cond_10
    if-ne v3, v12, :cond_13

    instance-of v15, v6, Ljava/lang/Byte;

    if-eqz v15, :cond_11

    move-object v14, v6

    check-cast v14, Ljava/lang/Byte;

    :cond_11
    if-eqz v14, :cond_12

    invoke-virtual {v14}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    goto :goto_3

    :cond_12
    move v6, v2

    :goto_3
    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto/16 :goto_8

    :cond_13
    if-ne v3, v11, :cond_16

    instance-of v15, v6, Ljava/lang/Integer;

    if-eqz v15, :cond_14

    move-object v14, v6

    check-cast v14, Ljava/lang/Integer;

    :cond_14
    if-eqz v14, :cond_15

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_4

    :cond_15
    move v6, v2

    :goto_4
    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_8

    :cond_16
    if-ne v3, v10, :cond_19

    instance-of v15, v6, Ljava/lang/Long;

    if-eqz v15, :cond_17

    move-object v14, v6

    check-cast v14, Ljava/lang/Long;

    :cond_17
    if-eqz v14, :cond_18

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    goto :goto_5

    :cond_18
    const-wide/16 v14, 0x0

    :goto_5
    invoke-virtual {v0, v14, v15}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_8

    :cond_19
    if-ne v3, v9, :cond_1c

    instance-of v15, v6, Ljava/lang/Float;

    if-eqz v15, :cond_1a

    move-object v14, v6

    check-cast v14, Ljava/lang/Float;

    :cond_1a
    if-eqz v14, :cond_1b

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_6

    :cond_1b
    const/4 v6, 0x0

    :goto_6
    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_8

    :cond_1c
    if-ne v3, v8, :cond_1f

    instance-of v15, v6, Ljava/lang/Double;

    if-eqz v15, :cond_1d

    move-object v14, v6

    check-cast v14, Ljava/lang/Double;

    :cond_1d
    if-eqz v14, :cond_1e

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    goto :goto_7

    :cond_1e
    const-wide/16 v14, 0x0

    :goto_7
    invoke-virtual {v0, v14, v15}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto :goto_8

    :cond_1f
    if-ne v3, v7, :cond_22

    instance-of v15, v6, Ljava/lang/String;

    if-eqz v15, :cond_20

    move-object v14, v6

    check-cast v14, Ljava/lang/String;

    :cond_20
    if-nez v14, :cond_21

    const-string v14, "androidx.work.Data-95ed6082-b8e9-46e8-a73f-ff56f00f5d9d"

    :cond_21
    invoke-virtual {v0, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_22
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_23
    :goto_9
    invoke-virtual/range {p0 .. p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    return-void

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v5, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v3, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v3, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
