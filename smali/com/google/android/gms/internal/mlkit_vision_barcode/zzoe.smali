.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;

.field public static final zzb:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzc:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzd:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zze:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzf:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzg:Lcom/google/firebase/encoders/FieldDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;-><init>(I)V

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfe;

    invoke-static {v1, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v2, Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-static {v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "appName"

    invoke-direct {v2, v3, v0}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;->zzb:Lcom/google/firebase/encoders/FieldDescriptor;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;-><init>(I)V

    invoke-static {v1, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v2, Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-static {v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v3, "sessionId"

    invoke-direct {v2, v3, v0}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;-><init>(I)V

    invoke-static {v1, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v2, Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-static {v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v3, "startZoomLevel"

    invoke-direct {v2, v3, v0}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;->zzd:Lcom/google/firebase/encoders/FieldDescriptor;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;-><init>(I)V

    invoke-static {v1, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v2, Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-static {v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "endZoomLevel"

    invoke-direct {v2, v3, v0}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;->zze:Lcom/google/firebase/encoders/FieldDescriptor;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;-><init>(I)V

    invoke-static {v1, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v2, Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-static {v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "durationMs"

    invoke-direct {v2, v3, v0}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;->zzf:Lcom/google/firebase/encoders/FieldDescriptor;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;

    const/4 v2, 0x6

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;-><init>(I)V

    invoke-static {v1, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-static {v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "predictedArea"

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;->zzg:Lcom/google/firebase/encoders/FieldDescriptor;

    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzut;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;->zzb:Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-interface {p2, p1, p0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;->zzd:Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-interface {p2, p0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;->zze:Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-interface {p2, p0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;->zzf:Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-interface {p2, p0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;->zzg:Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-interface {p2, p0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-void
.end method
