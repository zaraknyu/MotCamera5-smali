.class public final enum Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntriesList;

.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;

.field public static final Companion:Landroidx/transition/Transition$1;

.field public static final enum FACE_EXPRESSION:Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;

.field public static final enum LEGACY:Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;


# instance fields
.field public final lottieId:I

.field public final thumbnailId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;

    const v1, 0x7f0800c2

    const v2, 0x7f110009

    const/4 v3, 0x0

    const-string v4, "FACE_EXPRESSION"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;-><init>(IILjava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;->FACE_EXPRESSION:Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;

    const v2, 0x7f0800c3

    const v3, 0x7f11000a

    const/4 v4, 0x1

    const-string v5, "CHILL"

    invoke-direct {v1, v4, v2, v5, v3}, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;-><init>(IILjava/lang/String;I)V

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;

    const v3, 0x7f0800c4

    const v4, 0x7f11000b

    const/4 v5, 0x2

    const-string v6, "HABIT"

    invoke-direct {v2, v5, v3, v6, v4}, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;-><init>(IILjava/lang/String;I)V

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;

    const v4, 0x7f0800c5

    const v5, 0x7f11000c

    const/4 v6, 0x3

    const-string v7, "TOY_MACHINE"

    invoke-direct {v3, v6, v4, v7, v5}, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;-><init>(IILjava/lang/String;I)V

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;

    const v5, 0x7f0800c6

    const v6, 0x7f11000d

    const/4 v7, 0x4

    const-string v8, "LEGACY"

    invoke-direct {v4, v7, v5, v8, v6}, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;-><init>(IILjava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;->LEGACY:Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    new-instance v0, Landroidx/transition/Transition$1;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Landroidx/transition/Transition$1;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;->Companion:Landroidx/transition/Transition$1;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;->thumbnailId:I

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;->lottieId:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntriesList;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;

    return-object v0
.end method
