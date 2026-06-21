.class public final Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/settings/SettingChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mListened:Lcom/motorola/camera/settings/SettingsManager$Key;

.field public mMaxValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/settings/SettingsManager$Key;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;->mListened:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;->mMaxValue:Ljava/lang/Object;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-void
.end method


# virtual methods
.method public final onChange(Lcom/motorola/camera/settings/Setting;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;->mMaxValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;->mMaxValue:Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;->mMaxValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v0, v1, :cond_0

    iput-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;->mMaxValue:Ljava/lang/Object;

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;->mMaxValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;->mMaxValue:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
