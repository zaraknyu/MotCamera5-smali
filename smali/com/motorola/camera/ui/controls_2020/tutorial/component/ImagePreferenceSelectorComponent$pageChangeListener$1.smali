.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$pageChangeListener$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# instance fields
.field public enableAnimate:Z

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$pageChangeListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$pageChangeListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->pagerRealPosition:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 12

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$pageChangeListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    check-cast v1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/IMagePreferenceSelectorAdapter;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v4, v1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/IMagePreferenceSelectorAdapter;->selectorList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez p1, :cond_2

    sub-int/2addr v4, v5

    goto :goto_2

    :cond_2
    sub-int/2addr v4, v6

    if-ne p1, v4, :cond_3

    move v4, v6

    goto :goto_2

    :cond_3
    move v4, p1

    :goto_2
    iput v4, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->pagerRealPosition:I

    iget-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$pageChangeListener$1;->enableAnimate:Z

    const/4 v7, 0x3

    if-eqz v1, :cond_c

    iget-object v8, v1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/IMagePreferenceSelectorAdapter;->selectorList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/IMagePreferenceSelectorAdapter;->supportAICustomizeColorTone()Z

    move-result v9

    if-eqz v9, :cond_5

    if-ltz p1, :cond_5

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le p1, v9, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

    iget v9, v9, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;->value:I

    if-ne v9, v7, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/IMagePreferenceSelectorAdapter;->supportAICustomizeColorTone()Z

    move-result v9

    if-nez v9, :cond_7

    if-ltz p1, :cond_7

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le p1, v9, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

    iget v8, v8, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;->value:I

    if-ne v8, v5, :cond_7

    :goto_4
    move v8, v6

    goto :goto_6

    :cond_7
    :goto_5
    move v8, v3

    :goto_6
    if-eqz v8, :cond_a

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SHOW_AI_PERSONAL_COLOR_TONE_PAGE_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v10

    iget-object v10, v10, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-gt v10, v7, :cond_8

    add-int/lit8 v11, v10, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_8
    if-gt v10, v7, :cond_9

    goto :goto_7

    :cond_9
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->AI_PERSONAL_COLOR_TONE_MOO_PAGE_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v9

    iget-object v9, v9, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v6, :cond_a

    :goto_7
    move v9, v6

    goto :goto_8

    :cond_a
    move v9, v3

    :goto_8
    if-nez v9, :cond_b

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->AI_PERSONAL_COLOR_TONE_MOO_PAGE_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v10

    iget-object v10, v10, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v10, :cond_b

    if-eqz v8, :cond_b

    move v8, v6

    goto :goto_9

    :cond_b
    move v8, v3

    :goto_9
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    xor-int/lit8 v11, v8, 0x1

    invoke-virtual {v0, v11, v4}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->startApplyButtonAnimate(ZZ)V

    invoke-virtual {v0, v8, v4}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->startMooButtonAnimate(ZZ)V

    invoke-virtual {v0, v9, v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->startMooLayoutAnimate(ZZ)V

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    :cond_c
    if-eqz v1, :cond_11

    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/IMagePreferenceSelectorAdapter;->selectorList:Ljava/util/ArrayList;

    if-ltz p1, :cond_e

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le p1, v3, :cond_d

    goto :goto_a

    :cond_d
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

    iget v3, v3, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;->value:I

    if-ne v3, v5, :cond_e

    const p1, 0x7f120205

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_b

    :cond_e
    :goto_a
    if-ltz p1, :cond_10

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le p1, v3, :cond_f

    goto :goto_b

    :cond_f
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

    iget p1, p1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;->value:I

    if-ne p1, v7, :cond_10

    const p1, 0x7f120204

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_10
    :goto_b
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->descriptionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_11
    iput-boolean v6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$pageChangeListener$1;->enableAnimate:Z

    return-void
.end method
