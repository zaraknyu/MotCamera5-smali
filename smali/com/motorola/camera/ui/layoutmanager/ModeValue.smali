.class public final enum Lcom/motorola/camera/ui/layoutmanager/ModeValue;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/layoutmanager/ModeValue;

.field public static final enum Fold:Lcom/motorola/camera/ui/layoutmanager/ModeValue;

.field public static final enum Normal:Lcom/motorola/camera/ui/layoutmanager/ModeValue;


# instance fields
.field public final BORDER_GAP:I

.field public final HEIGHT:I

.field public final LEFT:I

.field public final MENU_FONT:I

.field public final MENU_GAP:I

.field public final RIGHT:I

.field public final SLIDER_FONT:I

.field public final WIDTH:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    const/16 v10, 0xe

    const/16 v11, 0x10

    const-string v1, "Normal"

    const/4 v2, 0x0

    const/16 v3, 0x5a

    const/16 v4, 0x5a

    const/16 v5, 0xf

    const/16 v6, 0xf

    const/16 v7, 0xc

    const/16 v8, 0xb

    const/16 v9, 0xd

    invoke-direct/range {v0 .. v11}, Lcom/motorola/camera/ui/layoutmanager/ModeValue;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->Normal:Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    new-instance v1, Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    const/16 v12, 0x14

    const-string v2, "Fold"

    const/4 v3, 0x1

    const/16 v4, 0x6e

    const/16 v5, 0x6e

    const/16 v6, 0x12

    const/16 v7, 0x12

    const/16 v8, 0x10

    const/16 v9, 0xc

    invoke-direct/range {v1 .. v12}, Lcom/motorola/camera/ui/layoutmanager/ModeValue;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v1, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->Fold:Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    filled-new-array {v0, v1}, [Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->$VALUES:[Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIIIIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->WIDTH:I

    iput p4, p0, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->HEIGHT:I

    iput p5, p0, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->LEFT:I

    iput p6, p0, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->RIGHT:I

    iput p7, p0, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->MENU_GAP:I

    iput p8, p0, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->MENU_FONT:I

    iput p9, p0, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->SLIDER_FONT:I

    iput p11, p0, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->BORDER_GAP:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/layoutmanager/ModeValue;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/layoutmanager/ModeValue;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->$VALUES:[Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/layoutmanager/ModeValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    return-object v0
.end method
