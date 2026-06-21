.class public final Lcom/google/gson/internal/bind/ObjectTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter;"
    }
.end annotation


# static fields
.field public static final DOUBLE_FACTORY:Lcom/google/gson/TypeAdapterFactory;


# instance fields
.field public final gson:Lcom/google/gson/Gson;

.field public final toNumberStrategy:Lcom/google/gson/ToNumberPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;

    sget-object v1, Lcom/google/gson/ToNumberPolicy;->DOUBLE:Lcom/google/gson/ToNumberPolicy$1;

    invoke-direct {v0, v1}, Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;-><init>(Lcom/google/gson/ToNumberPolicy;)V

    sput-object v0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->DOUBLE_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/Gson;Lcom/google/gson/ToNumberPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->gson:Lcom/google/gson/Gson;

    iput-object p2, p0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->toNumberStrategy:Lcom/google/gson/ToNumberPolicy;

    return-void
.end method

.method public static getFactory(Lcom/google/gson/ToNumberPolicy;)Lcom/google/gson/TypeAdapterFactory;
    .locals 1

    sget-object v0, Lcom/google/gson/ToNumberPolicy;->DOUBLE:Lcom/google/gson/ToNumberPolicy$1;

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->DOUBLE_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;-><init>(Lcom/google/gson/ToNumberPolicy;)V

    return-object v0
.end method


# virtual methods
.method public final read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    move-object v1, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    new-instance v1, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-direct {v1, v3}, Lcom/google/gson/internal/LinkedTreeMap;-><init>(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-nez v1, :cond_2

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->readTerminal(Lcom/google/gson/stream/JsonReader;I)Ljava/io/Serializable;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    instance-of v5, v1, Ljava/util/Map;

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    move-object v5, v4

    :goto_2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()I

    move-result v6

    invoke-static {v6}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v7

    if-eqz v7, :cond_6

    if-eq v7, v2, :cond_5

    move-object v7, v4

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    new-instance v7, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-direct {v7, v3}, Lcom/google/gson/internal/LinkedTreeMap;-><init>(Z)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    if-eqz v7, :cond_7

    move v8, v3

    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    :goto_4
    if-nez v7, :cond_8

    invoke-virtual {p0, p1, v6}, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->readTerminal(Lcom/google/gson/stream/JsonReader;I)Ljava/io/Serializable;

    move-result-object v7

    :cond_8
    instance-of v6, v1, Ljava/util/List;

    if-eqz v6, :cond_9

    move-object v5, v1

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    move-object v6, v1

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    if-eqz v8, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    move-object v1, v7

    goto :goto_1

    :cond_a
    instance-of v5, v1, Ljava/util/List;

    if-eqz v5, :cond_b

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    goto :goto_6

    :cond_b
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    return-object v1

    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1
.end method

.method public final readTerminal(Lcom/google/gson/stream/JsonReader;I)Ljava/io/Serializable;
    .locals 2

    invoke-static {p2}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 p0, 0x7

    if-eq v0, p0, :cond_1

    const/16 p0, 0x8

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {p2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->stringValueOf$2(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unexpected token: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->toNumberStrategy:Lcom/google/gson/ToNumberPolicy;

    invoke-virtual {p0, p1}, Lcom/google/gson/ToNumberPolicy;->readNumber(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object p0, p0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/gson/reflect/TypeToken;

    invoke-direct {v1, v0}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p0, v1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object p0

    instance-of v0, p0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()V

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()V

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
