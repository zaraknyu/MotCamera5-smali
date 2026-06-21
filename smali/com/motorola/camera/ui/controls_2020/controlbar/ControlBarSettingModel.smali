.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final combineSettingValue:Ljava/lang/Object;

.field public final isAlwaysOn:Z

.field public final isPrimaryTint:Z

.field public final key:Lcom/motorola/camera/settings/SettingsManager$Key;

.field public final unspecifiedColor:Z

.field public final value:Ljava/lang/Object;

.field public final values:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ZZZILcom/motorola/camera/VideoFormat;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->value:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->isPrimaryTint:Z

    iput-boolean p4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->unspecifiedColor:Z

    iput-boolean p5, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->isAlwaysOn:Z

    iput p6, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->values:I

    iput-object p7, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->combineSettingValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->value:Ljava/lang/Object;

    iget-object v3, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->value:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->isPrimaryTint:Z

    iget-boolean v3, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->isPrimaryTint:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->unspecifiedColor:Z

    iget-boolean v3, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->unspecifiedColor:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->isAlwaysOn:Z

    iget-boolean v3, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->isAlwaysOn:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->values:I

    iget v3, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->values:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->combineSettingValue:Ljava/lang/Object;

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->combineSettingValue:Ljava/lang/Object;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {v0}, Lcom/motorola/camera/settings/SettingsManager$Key;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->isPrimaryTint:Z

    invoke-static {v2, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->unspecifiedColor:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->isAlwaysOn:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->values:I

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->combineSettingValue:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ControlBarSettingModel(key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPrimaryTint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->isPrimaryTint:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", unspecifiedColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->unspecifiedColor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAlwaysOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->isAlwaysOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->values:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", combineSettingValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->combineSettingValue:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
