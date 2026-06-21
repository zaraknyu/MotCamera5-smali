.class Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$ImagingModelTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImagingModelTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$ImagingModelTypeAdapter;-><init>()V

    return-void
.end method

.method public static readFloatArray(Lcom/google/gson/stream/JsonReader;)[F
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->endArray()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [F

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v2

    aput v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 8

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    const/16 v2, 0x8

    if-ne p0, v2, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    return-object v0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "expecting object: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/google/gson/stream/JsonReader;ZLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    move-object p0, v0

    move v3, v1

    move v4, v3

    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, -0x1

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "lens_dist"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v6, "width"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    move v7, v2

    goto :goto_1

    :sswitch_2
    const-string v6, "height"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v7, 0x1

    goto :goto_1

    :sswitch_3
    const-string v6, "lens_calib"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    move v7, v1

    :goto_1
    packed-switch v7, :pswitch_data_0

    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unknown field name while parsing ImagingModel"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-static {p1}, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$ImagingModelTypeAdapter;->readFloatArray(Lcom/google/gson/stream/JsonReader;)[F

    move-result-object p0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v3

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v4

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$ImagingModelTypeAdapter;->readFloatArray(Lcom/google/gson/stream/JsonReader;)[F

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    new-instance p1, Lcom/motorola/camera/mcf/McfImagingModelAuxData;

    invoke-direct {p1, v0, p0, v3, v4}, Lcom/motorola/camera/mcf/McfImagingModelAuxData;-><init>([F[FII)V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x6419611a -> :sswitch_3
        -0x48c76ed9 -> :sswitch_2
        0x6be2dc6 -> :sswitch_1
        0xd4a1447 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 4

    check-cast p2, Lcom/motorola/camera/mcf/McfImagingModelAuxData;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()V

    const-string/jumbo p0, "width"

    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfImagingModelAuxData;->getWidth()I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    const-string p0, "height"

    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfImagingModelAuxData;->getHeight()I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfImagingModelAuxData;->getLensDistortion()[F

    move-result-object p0

    const-string v0, "lens_dist"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()V

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    invoke-virtual {p1, v3}, Lcom/google/gson/stream/JsonWriter;->value(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()V

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfImagingModelAuxData;->getLensIntrinsicCalibration()[F

    move-result-object p0

    const-string p2, "lens_calib"

    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()V

    array-length p2, p0

    :goto_1
    if-ge v1, p2, :cond_2

    aget v0, p0, v1

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->value(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()V

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()V

    return-void
.end method
