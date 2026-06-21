.class public final enum Lcom/google/gson/ToNumberPolicy$4;
.super Lcom/google/gson/ToNumberPolicy;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "BIG_DECIMAL"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final readNumber(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;
    .locals 4

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Lcom/google/gson/internal/Streams;->parseBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/gson/JsonParseException;

    const-string v2, "Cannot parse "

    const-string v3, "; at path "

    invoke-static {v2, p0, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {p1, v2, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/google/gson/stream/JsonReader;ZLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
