.class public final Lcom/google/android/material/textfield/TextInputLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public previousLineCount:I

.field public final synthetic this$0:Lcom/google/android/material/textfield/TextInputLayout;

.field public final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout$1;->this$0:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLineCount()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout$1;->previousLineCount:I

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout$1;->this$0:Lcom/google/android/material/textfield/TextInputLayout;

    iget-boolean v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->restoringSavedState:Z

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(ZZ)V

    iget-boolean v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->counterEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounter(Landroid/text/Editable;)V

    :cond_0
    iget-boolean v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderEnabled:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->updatePlaceholderText(Landroid/text/Editable;)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout$1;->previousLineCount:I

    if-eq v1, v2, :cond_3

    if-ge v1, v2, :cond_2

    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result v2

    iget v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->originalEditTextMinimumHeight:I

    if-eq v2, v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_2
    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout$1;->previousLineCount:I

    :cond_3
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
