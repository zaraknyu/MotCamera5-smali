.class public abstract synthetic Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;->values()[Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;->DISABLE:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    const/4 v1, 0x1

    aput v1, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sput-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
