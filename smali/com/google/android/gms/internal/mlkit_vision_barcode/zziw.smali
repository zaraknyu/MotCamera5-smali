.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zziw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zziw;

.field public static final zzb:Lcom/google/firebase/encoders/FieldDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zziw;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zziw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zziw;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;-><init>(I)V

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfe;

    invoke-static {v1, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-static {v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "format"

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zziw;->zzb:Lcom/google/firebase/encoders/FieldDescriptor;

    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvz;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zziw;->zzb:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

    invoke-interface {p2, p0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-void
.end method
