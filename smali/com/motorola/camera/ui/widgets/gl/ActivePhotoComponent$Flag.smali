.class public final enum Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;

.field public static final enum ENABLED:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;

.field public static final enum LOADED:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;

.field public static final enum SETUP:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;

    const-string v1, "LOADED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;->LOADED:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;

    const-string v2, "SETUP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;->SETUP:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;

    const-string v3, "ENABLED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;->ENABLED:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;

    filled-new-array {v0, v1, v2}, [Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;

    return-object v0
.end method
