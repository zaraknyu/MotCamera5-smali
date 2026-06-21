.class public final enum Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;

.field public static final enum ON_ANIMATION_BEGIN:Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;

.field public static final enum ON_ANIMATION_END:Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;

    const-string v1, "ON_ANIMATION_BEGIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;->ON_ANIMATION_BEGIN:Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;

    new-instance v1, Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;

    const-string v2, "ON_ANIMATION_END"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;->ON_ANIMATION_END:Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;

    filled-new-array {v0, v1}, [Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;->$VALUES:[Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;->$VALUES:[Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;

    return-object v0
.end method
