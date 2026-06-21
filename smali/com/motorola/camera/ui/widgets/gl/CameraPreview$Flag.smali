.class public final enum Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

.field public static final enum ANIMATE_FOR_BACK_SWITCH:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

.field public static final enum ANIMATE_FOR_CROSS_FADE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

.field public static final enum ANIMATE_FOR_IMAGE_RATIO:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

.field public static final enum ANIMATE_SURFACE_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

.field public static final enum CAMERA_SWITCHING:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

.field public static final enum CAMERA_SWITCH_ACTIVE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

.field public static final enum COPY_FRAME_FOR_PREVIEW_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

.field public static final enum DEFE_STAR_TRAIL_SURFACE_LOAD:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

.field public static final enum DEFE_SURFACE_LOADED:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

.field public static final enum ENTER_TEN_BIT_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

.field public static final enum EXIT_TEN_BIT_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

.field public static final enum SERVICE_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

.field public static final enum SET_REPEATING_COMPLETE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

.field public static final enum SURFACE_READY:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

.field public static final enum VIDEO_STOP:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

.field public static final enum VIEW_SIZE_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const-string v0, "CAMERA_SWITCH_ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->CAMERA_SWITCH_ACTIVE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const-string v0, "ANIMATE_FOR_IMAGE_RATIO"

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_IMAGE_RATIO:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const-string v0, "SERVICE_MODE"

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SERVICE_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const-string v0, "COPY_FRAME_FOR_PREVIEW_CHANGE"

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->COPY_FRAME_FOR_PREVIEW_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const-string v0, "ANIMATE_FOR_CROSS_FADE"

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_CROSS_FADE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const-string v0, "SURFACE_READY"

    const/4 v7, 0x5

    invoke-direct {v6, v0, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SURFACE_READY:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const-string v0, "SET_REPEATING_COMPLETE"

    const/4 v8, 0x6

    invoke-direct {v7, v0, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const-string v0, "ANIMATE_FOR_BACK_SWITCH"

    const/4 v9, 0x7

    invoke-direct {v8, v0, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_BACK_SWITCH:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const-string v0, "VIDEO_STOP"

    const/16 v10, 0x8

    invoke-direct {v9, v0, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->VIDEO_STOP:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const-string v0, "CAMERA_SWITCHING"

    const/16 v11, 0x9

    invoke-direct {v10, v0, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->CAMERA_SWITCHING:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const-string v0, "ENTER_TEN_BIT_MODE"

    const/16 v12, 0xa

    invoke-direct {v11, v0, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ENTER_TEN_BIT_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const-string v0, "EXIT_TEN_BIT_MODE"

    const/16 v13, 0xb

    invoke-direct {v12, v0, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->EXIT_TEN_BIT_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const-string v0, "DEFE_SURFACE_LOADED"

    const/16 v14, 0xc

    invoke-direct {v13, v0, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->DEFE_SURFACE_LOADED:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const-string v0, "DEFE_STAR_TRAIL_SURFACE_LOAD"

    const/16 v15, 0xd

    invoke-direct {v14, v0, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->DEFE_STAR_TRAIL_SURFACE_LOAD:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    new-instance v15, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const-string v0, "ANIMATE_SURFACE_CHANGE"

    move-object/from16 v16, v1

    const/16 v1, 0xe

    invoke-direct {v15, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_SURFACE_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const-string v1, "VIEW_SIZE_CHANGE"

    move-object/from16 v17, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->VIEW_SIZE_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v16, v0

    filled-new-array/range {v1 .. v16}, [Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    return-object v0
.end method
