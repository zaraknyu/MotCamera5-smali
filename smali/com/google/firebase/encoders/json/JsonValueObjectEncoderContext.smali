.class public final Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoderContext;
.implements Lcom/google/firebase/encoders/ValueEncoderContext;


# instance fields
.field public final active:Z

.field public final fallbackEncoder:Lcom/google/firebase/encoders/ObjectEncoder;

.field public final ignoreNullValues:Z

.field public final jsonWriter:Landroid/util/JsonWriter;

.field public final objectEncoders:Ljava/util/Map;

.field public final valueEncoders:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/io/StringWriter;Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/encoders/ObjectEncoder;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->active:Z

    new-instance v0, Landroid/util/JsonWriter;

    invoke-direct {v0, p1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    iput-object p2, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->objectEncoders:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->valueEncoders:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->fallbackEncoder:Lcom/google/firebase/encoders/ObjectEncoder;

    iput-boolean p5, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->ignoreNullValues:Z

    return-void
.end method


# virtual methods
.method public final add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/google/firebase/encoders/FieldDescriptor;->name:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, p2, p1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final add(Ljava/lang/String;)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 12
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    return-object p0
.end method

.method public final add(Z)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 14
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    return-object p0
.end method

.method public final add(Ljava/lang/Object;)V
    .locals 5

    .line 15
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    if-nez p1, :cond_0

    .line 16
    invoke-virtual {v0}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    return-void

    .line 17
    :cond_0
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 18
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    return-void

    .line 19
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 20
    instance-of v1, p1, [B

    if-eqz v1, :cond_2

    .line 21
    check-cast p1, [B

    .line 22
    invoke-virtual {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    const/4 p0, 0x2

    .line 23
    invoke-static {p1, p0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    return-void

    .line 24
    :cond_2
    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 25
    instance-of v1, p1, [I

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 26
    check-cast p1, [I

    array-length p0, p1

    :goto_0
    if-ge v2, p0, :cond_8

    aget v1, p1, v2

    int-to-long v3, v1

    .line 27
    invoke-virtual {v0, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28
    :cond_3
    instance-of v1, p1, [J

    if-eqz v1, :cond_4

    .line 29
    check-cast p1, [J

    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_8

    aget-wide v3, p1, v2

    .line 30
    invoke-virtual {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 31
    invoke-virtual {v0, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 32
    :cond_4
    instance-of v1, p1, [D

    if-eqz v1, :cond_5

    .line 33
    check-cast p1, [D

    array-length p0, p1

    :goto_2
    if-ge v2, p0, :cond_8

    aget-wide v3, p1, v2

    .line 34
    invoke-virtual {v0, v3, v4}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 35
    :cond_5
    instance-of v1, p1, [Z

    if-eqz v1, :cond_6

    .line 36
    check-cast p1, [Z

    array-length p0, p1

    :goto_3
    if-ge v2, p0, :cond_8

    aget-boolean v1, p1, v2

    .line 37
    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 38
    :cond_6
    instance-of v1, p1, [Ljava/lang/Number;

    if-eqz v1, :cond_7

    .line 39
    check-cast p1, [Ljava/lang/Number;

    array-length v1, p1

    :goto_4
    if-ge v2, v1, :cond_8

    aget-object v3, p1, v2

    .line 40
    invoke-virtual {p0, v3}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 41
    :cond_7
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    :goto_5
    if-ge v2, v1, :cond_8

    aget-object v3, p1, v2

    .line 42
    invoke-virtual {p0, v3}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 43
    :cond_8
    invoke-virtual {v0}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-void

    .line 44
    :cond_9
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_b

    .line 45
    check-cast p1, Ljava/util/Collection;

    .line 46
    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 47
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 48
    invoke-virtual {p0, v1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/Object;)V

    goto :goto_6

    .line 49
    :cond_a
    invoke-virtual {v0}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-void

    .line 50
    :cond_b
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_d

    .line 51
    check-cast p1, Ljava/util/Map;

    .line 52
    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 53
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 54
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 55
    :try_start_0
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception p0

    .line 56
    new-instance p1, Lcom/google/gson/JsonParseException;

    .line 57
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 58
    const-string v1, "Only String keys are currently supported in maps, got %s of type %s instead."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    throw p1

    .line 61
    :cond_c
    invoke-virtual {v0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void

    .line 62
    :cond_d
    iget-object v1, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->objectEncoders:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/encoders/ObjectEncoder;

    if-eqz v1, :cond_e

    .line 63
    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 64
    invoke-interface {v1, p1, p0}, Lcom/google/firebase/encoders/Encoder;->encode(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    invoke-virtual {v0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void

    .line 66
    :cond_e
    iget-object v1, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->valueEncoders:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/encoders/ValueEncoder;

    if-eqz v1, :cond_f

    .line 67
    invoke-interface {v1, p1, p0}, Lcom/google/firebase/encoders/Encoder;->encode(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 68
    :cond_f
    instance-of v1, p1, Ljava/lang/Enum;

    if-eqz v1, :cond_10

    .line 69
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-virtual {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 71
    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    return-void

    .line 72
    :cond_10
    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 73
    iget-object v1, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->fallbackEncoder:Lcom/google/firebase/encoders/ObjectEncoder;

    invoke-interface {v1, p1, p0}, Lcom/google/firebase/encoders/Encoder;->encode(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public final add(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 3
    iget-boolean v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->ignoreNullValues:Z

    iget-object v1, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 5
    invoke-virtual {v1, p2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 8
    invoke-virtual {v1, p2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    if-nez p1, :cond_2

    .line 9
    invoke-virtual {v1}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    return-void

    .line 10
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public final maybeUnNest()V
    .locals 1

    iget-boolean p0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->active:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Parent context used since this context was created. Cannot use this context anymore."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
