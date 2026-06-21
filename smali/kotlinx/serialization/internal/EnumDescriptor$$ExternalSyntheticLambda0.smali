.class public final synthetic Lkotlinx/serialization/internal/EnumDescriptor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Lkotlinx/serialization/internal/EnumDescriptor;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lkotlinx/serialization/internal/EnumDescriptor$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlinx/serialization/internal/EnumDescriptor$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lkotlinx/serialization/internal/EnumDescriptor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/serialization/internal/EnumDescriptor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;I)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lkotlinx/serialization/internal/EnumDescriptor$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/EnumDescriptor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lkotlinx/serialization/internal/EnumDescriptor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput p3, p0, Lkotlinx/serialization/internal/EnumDescriptor$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lkotlinx/serialization/internal/EnumDescriptor$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkotlinx/serialization/internal/EnumDescriptor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    iget-object v1, p0, Lkotlinx/serialization/internal/EnumDescriptor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    iget p0, p0, Lkotlinx/serialization/internal/EnumDescriptor$$ExternalSyntheticLambda0;->f$0:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->onClickSetting(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;Ljava/lang/Integer;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lkotlinx/serialization/internal/EnumDescriptor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lkotlinx/serialization/internal/EnumDescriptor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v1, Lkotlinx/serialization/internal/EnumDescriptor;

    iget p0, p0, Lkotlinx/serialization/internal/EnumDescriptor$$ExternalSyntheticLambda0;->f$0:I

    new-array v2, p0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p0, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->names:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE$3:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    new-array v7, v3, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {v5, v6, v7}, Landroidx/compose/ui/unit/DpKt;->buildSerialDescriptor$default(Ljava/lang/String;Landroidx/compose/ui/unit/DpSize;[Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
