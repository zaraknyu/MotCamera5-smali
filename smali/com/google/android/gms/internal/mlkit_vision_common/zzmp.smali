.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzmp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_common/zzmc;


# instance fields
.field public final zzb:Lcom/google/firebase/components/Lazy;

.field public final zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzma;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_common/zzma;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmp;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzma;

    sget-object p2, Lcom/google/android/datatransport/cct/CCTDestination;->INSTANCE:Lcom/google/android/datatransport/cct/CCTDestination;

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/TransportRuntime;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportRuntime;->getInstance()Lcom/google/android/datatransport/runtime/TransportRuntime;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/datatransport/runtime/TransportRuntime;->newFactory(Lcom/google/android/datatransport/runtime/EncodedDestination;)Landroidx/core/view/MenuHostHelper;

    move-result-object p1

    sget-object p2, Lcom/google/android/datatransport/cct/CCTDestination;->SUPPORTED_ENCODINGS:Ljava/util/Set;

    new-instance v0, Lcom/google/android/datatransport/Encoding;

    const-string v1, "json"

    invoke-direct {v0, v1}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/google/firebase/components/Lazy;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmm;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmm;-><init>(ILjava/lang/Object;)V

    invoke-direct {p2, v0}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    :cond_0
    new-instance p2, Lcom/google/firebase/components/Lazy;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmm;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmm;-><init>(ILjava/lang/Object;)V

    invoke-direct {p2, v0}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmp;->zzb:Lcom/google/firebase/components/Lazy;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/motorola/camera/CameraKpi;)V
    .locals 6

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmp;->zzb:Lcom/google/firebase/components/Lazy;

    invoke-virtual {p0}, Lcom/google/firebase/components/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/runtime/TransportImpl;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zziy;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;->zza$1:Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;

    iget-object v2, p1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v2, Lcom/google/zxing/Result;

    iget-object v3, p1, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzi:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzg:Ljava/lang/Boolean;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzla;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzla;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzky;)V

    iput-object v3, v2, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;->zza()V

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_common/zziy;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zziy;-><init>(Lcom/google/zxing/Result;)V

    new-instance v2, Lcom/google/zxing/Result;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lcom/google/zxing/Result;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;->configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    new-instance v1, Ljava/util/HashMap;

    iget-object v3, v2, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v3, Ljava/util/HashMap;

    iget-object v4, v2, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v2, v2, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzaj;

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;

    invoke-direct {v5, v4, v1, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;-><init>(Ljava/io/ByteArrayOutputStream;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/google/firebase/encoders/ObjectEncoder;)V

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/encoders/ObjectEncoder;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, v5}, Lcom/google/firebase/encoders/Encoder;->encode(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/gson/JsonParseException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No encoder for "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    new-instance v0, Lcom/google/android/datatransport/AutoValue_Event;

    sget-object v1, Lcom/google/android/datatransport/Priority;->VERY_LOW:Lcom/google/android/datatransport/Priority;

    invoke-direct {v0, p1, v1}, Lcom/google/android/datatransport/AutoValue_Event;-><init>(Ljava/lang/Object;Lcom/google/android/datatransport/Priority;)V

    invoke-virtual {p0, v0}, Lcom/google/android/datatransport/runtime/TransportImpl;->send(Lcom/google/android/datatransport/AutoValue_Event;)V

    return-void

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Failed to covert logging to UTF-8 byte array"

    invoke-direct {p1, v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
