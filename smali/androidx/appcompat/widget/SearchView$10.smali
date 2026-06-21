.class public final Landroidx/appcompat/widget/SearchView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/SearchView$10;->$r8$classId:I

    iput-object p2, p0, Landroidx/appcompat/widget/SearchView$10;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final afterTextChanged$androidx$appcompat$widget$SearchView$10(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method private final afterTextChanged$com$motorola$camera$fragments$ArraySettingDialogFragment$ArraySettingTextWatcher(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method private final afterTextChanged$com$motorola$camera$fragments$SettingDialogFragment$SettingTextWatcher(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method private final beforeTextChanged$androidx$appcompat$widget$SearchView$10(IIILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method private final beforeTextChanged$com$motorola$camera$fragments$ArraySettingDialogFragment$ArraySettingTextWatcher(IIILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method private final beforeTextChanged$com$motorola$camera$fragments$SettingDialogFragment$SettingTextWatcher(IIILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/SearchView$10;->$r8$classId:I

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/SearchView$10;->$r8$classId:I

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget p2, p0, Landroidx/appcompat/widget/SearchView$10;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$10;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fragments/SettingDialogFragment;

    iget-object p2, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mSupportedValues:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mValueList:Landroid/widget/ListView;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mValueList:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$10;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fragments/ArraySettingDialogFragment;

    invoke-virtual {p0}, Lcom/motorola/camera/fragments/ArraySettingDialogFragment;->updateValueListFromEditText()V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$10;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/SearchView;

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/lit8 p3, p2, 0x1

    invoke-virtual {p0, p3}, Landroidx/appcompat/widget/SearchView;->updateSubmitButton(Z)V

    iget-boolean p3, p0, Landroidx/appcompat/widget/SearchView;->mVoiceButtonEnabled:Z

    const/16 p4, 0x8

    if-eqz p3, :cond_1

    iget-boolean p3, p0, Landroidx/appcompat/widget/SearchView;->mIconified:Z

    if-nez p3, :cond_1

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p4, 0x0

    :cond_1
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->updateCloseButton()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->updateSubmitArea()V

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->mOldQueryText:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/Matrices;

    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/fragments/SettingsManagerFragment;

    iget-object p2, p2, Lcom/motorola/camera/fragments/SettingsManagerFragment;->mAdapter:Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Landroidx/cursoradapter/widget/CursorFilter;

    invoke-direct {p4, p2}, Landroidx/cursoradapter/widget/CursorFilter;-><init>(Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;)V

    invoke-virtual {p4, p3}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->LAST_DEBUG_UI_SETTING_SEARCH_QUERY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2, p3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->mOldQueryText:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
