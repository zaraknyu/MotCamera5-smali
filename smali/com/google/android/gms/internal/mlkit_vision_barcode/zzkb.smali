.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkb;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkb;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;-><init>(I)V

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfe;

    invoke-static {v1, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;I)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;I)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzez;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public final synthetic encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0
.end method
