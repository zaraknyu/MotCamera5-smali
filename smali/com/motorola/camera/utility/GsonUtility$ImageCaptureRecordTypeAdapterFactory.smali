.class Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$LocationTypeAdapter;,
        Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$UriTypeAdapter;,
        Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CaptureRecordTypeAdapter;,
        Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CapturedMediaDataTypeAdapter;,
        Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$ImagingModelTypeAdapter;,
        Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$SkipTypeAdapter;
    }
.end annotation


# instance fields
.field public final SKIP_FIELD_SET:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    new-instance v1, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$1;

    invoke-direct {v1}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    new-instance v2, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$2;

    invoke-direct {v2}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    iget-object v11, v2, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/reflect/Method;

    const-class v4, [Ljava/lang/Byte;

    const-class v5, Ljava/lang/Byte;

    const-class v6, [B

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v8, Landroid/graphics/Bitmap;

    const-class v9, Lcom/motorola/camera/saving/CaptureHolder;

    iget-object v10, v1, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    filled-new-array/range {v3 .. v11}, [Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory;->SKIP_FIELD_SET:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 2

    iget-object v0, p2, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    const-class v1, Landroid/location/Location;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$LocationTypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :cond_0
    const-class v1, Landroid/net/Uri;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$UriTypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :cond_1
    const-class v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CaptureRecordTypeAdapter;

    invoke-direct {p0, p1}, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CaptureRecordTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object p0

    :cond_2
    const-class v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CapturedMediaDataTypeAdapter;

    invoke-direct {p0, p1}, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CapturedMediaDataTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object p0

    :cond_3
    const-class p1, Lcom/motorola/camera/mcf/McfImagingModelAuxData;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$ImagingModelTypeAdapter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$ImagingModelTypeAdapter;-><init>(I)V

    return-object p0

    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory;->SKIP_FIELD_SET:Ljava/util/Set;

    iget-object p1, p2, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$SkipTypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method
