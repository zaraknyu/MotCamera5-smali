.class public abstract Lcom/motorola/camera5/contentai/BuildConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MOT_MODEL_HASH_MAP:Lcom/motorola/camera/IqConfigManager$1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/IqConfigManager$1;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "gesture_auto_capture_model-2.2.model"

    const-string v2, "6093a"

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gesture_auto_capture_tflite_model-2.2.model"

    const-string v2, "7090b"

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gesture_auto_capture_tflite_model-2.3.model"

    const-string v2, "f7ab8"

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "scene_detection_model-2.93.model"

    const-string v2, "dace7"

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "scene_detection_tflite_model-2.93.model"

    const-string v2, "ec3f9"

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mot_scene_detection_model-59c80.model"

    const-string v2, "59c80"

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mot_scene_detection_model-994ef.model"

    const-string v2, "994ef"

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mot_scene_detection_model-8c8a2.model"

    const-string v2, "8c8a2"

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "smile_detection_model-1.2.model"

    const-string v2, "0cec0"

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "smile_detection_tflite_model-1.2.model"

    const-string v2, "fbb4e"

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "eye_contour_model-1.3.model"

    const-string v2, "dddd9"

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "eye_contour_tflite_model-1.3.model"

    const-string v2, "9c758"

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "doc_scan_model-1.2.model"

    const-string v2, "00e24"

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "slide_scan_model-1.0.model"

    const-string v2, "a4d7d"

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lcom/motorola/camera5/contentai/BuildConfig;->MOT_MODEL_HASH_MAP:Lcom/motorola/camera/IqConfigManager$1;

    return-void
.end method
